# Getting data into R
dir('/data/week1/')

cacoa <- read_tsv('/data/week1/cacoa.tsv')

ggplot(data = cacoa,
       mapping = aes(x = factor(ReviewDate), y = Rating)) +
  geom_boxplot()

ggplot(data = cacoa,
       mapping = aes(x = ReviewDate, y = Rating)) +
  geom_point(size = 0.1) + 
  geom_smooth()

ggplot(data = cacoa,mapping = aes(x = Rating)) +
  geom_freqpoly(binwidth = 0.5)

ggplot(data = cacoa,mapping = aes(x = Rating)) +
  geom_density()

pokemon <- read_tsv('/data/week1/pokemon.tsv')
colnames(pokemon) <- c('ID', 'Name', 'Type1', 'Type2',
                       'Total', 'HP', 'Attack',
                       'Defense', 'SpAtk', 'SpDef',
                       'Speed', 'Generation', 'Legendary')

filter(pokemon, Type1 %in% c('Fire', 'Psychic', 'Dragon')) %>%
  ggplot(aes(x = Total, col = Type1)) +
  geom_freqpoly()

filter(pokemon, Type1 %in% c('Fire', 'Psychic', 'Dragon')) %>%
  ggplot(aes(x = Total, col = Type1)) +
  geom_density()
  
ggplot(pokemon, aes(x = Type1, y = Total)) +
  geom_boxplot() +
  xlab("First Type") +
  ylab("Total power") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(pokemon, aes(x = Type1, y = Type2)) +
  geom_bin2d() +
  ggtitle("2D Histogram of Pokemon types")

arrange(pokemon, desc(Generation)) %>% select(Generation)

filter(pokemon, Type1 == 'Flying', Total < 300)

