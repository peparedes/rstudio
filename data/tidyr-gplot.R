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
                       

# Life expectancy vs GDP
(graph_life_gdp <- ggplot(gapminder, aes(y = lifeExp, x = gdpPercap)) + geom_point(alpha = 0.2) + scale_x_log10())
  
#LM
graph_life_gdp + geom_smooth(method = 'loess', se = FALSE) + 
  geom_smooth(method = 'lm', color = 'yellow')

#This is bad
ggplot(gapminder, aes(x = year, y = lifeExp, x = gdpPercap)) +
  geom_point() +
  geom_line() +
  ggtitle(gapminder_filename) + ylab('GDP')

#Facets
graph_life_gdp + facet_wrap(~ year)

#Back to dplyr
post1995 <- gapminder %>% filter(year >= 1997)
ggplot(gapminder, aes(y = lifeExp, x = gdpPercap)) +
  geom_point(alpha = 0.2) +
  facet_grid(year ~ continent)

#continents with different shapes and plot population by year
ggplot(gapminder, aes(gdpPercap, color = continent, fill = continent)) +
  geom_density(alpha = 0.2) + scale_x_log10() + geom_rug(alpha = 0.5)
