library(tidyverse)

#Select (old way)
gapminder[, c('country', 'year')]

#Select (dplyr)
select(gapminder, country, year)
gapminder %>% select(country, year)
gapminder %>% select(-ends_with('y')) %>% head()

# Filter (dplyr)
gapminder %>%
  filter(year > 1990, continent == "Asia") %>%
  select(country, gdpPercap)

#Group_by and Summarize
post1990 <- gapminder %>% filter(year > 1990)
post1990 <- post1990 %>% group_by(continent)
post1990 %>% 
  group_by(continent) %>% 
  summarize(country_count = n(), 
                       gdp_mean = mean(gdpPercap), 
                       gdp_sd = sd(gdpPercap))
                       