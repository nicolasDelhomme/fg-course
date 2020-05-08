pokemon <- read_tsv('/data/week1/pokemon.tsv')
colnames(pokemon) <- c('ID', 'Name', 'Type1', 'Type2',
                       'Total', 'HP', 'Attack',
                       'Defense', 'SpAtk', 'SpDef',
                       'Speed', 'Generation', 'Legendary')

pok_num <- select(pokemon, Total, HP, Attack, Defense, SpAtk, SpDef, Speed)
pok_num <- as.matrix(pok_num)

pca <- prcomp(pok_num)
pca_sdev <- round((pca$sdev ^ 2) / sum(pca$sdev ^ 2), 2)

pca <- tibble(PC1 = pca$x[, 1], PC2 = pca$x[, 2], 
              Name = pokemon$Name, Type1 = pokemon$Type1,
              Type2 = pokemon$Type2, Generation = pokemon$Generation,
              Legendary = pokemon$Legendary)

ggplot(pca, aes(x = PC1, y = PC2)) + 
  geom_point(alpha = 0.25)

ggplot(pca, aes(x = PC1, y = PC2, col = Legendary)) + 
  geom_point() +
  xlab(paste('PC1', perc_var[1])) +
  ylab(paste('PC2', perc_var[2]))

library(modelr)
model <- lm(Total ~ SpAtk, data = pokemon)
plot(model)
