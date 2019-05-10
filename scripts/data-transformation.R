library(tidyverse)
library(nycflights13)

# Flights with an arrival delay of 2 or more hours
filter(flights, arr_delay >= 120)
flights %>% filter(arr_delay >= 120)

# Flights that flew to houston
filter(flights, dest == 'IAH' | dest == 'HOU')
filter(flights, dest %in% c('IAH', 'HOU'))

# Flights that were operated by AA, UA, DL
filter(flights, carrier %in% c('AA', 'UA', 'DL'))

# Flights were in summer
filter(flights, month %in% 7:9)
filter(flights, between(month, 7, 9))

# Arrived more than two hours late, but didn’t leave late
filter(flights, dep_delay < 1 & arr_delay > 5)

# Were delayed by at least an hour, but made up over 30 minutes in flight
filter(flights, dep_delay >= 60,
       arr_delay < (dep_delay - 30))

# Departed between midnight and 6am 
filter(flights, dep_time >= 0 & dep_time <= 600)

# Missing dep time
sum(is.na(flights$dep_time))
table(is.na(flights$dep_time))

# Some other exercises
arrange(flights, desc(dep_delay)) %>%
  select(carrier, dep_delay)

mutate(flights, delay_diff = dep_delay - arr_delay) %>%
  select(delay_diff)






