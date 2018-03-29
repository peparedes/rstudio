library(tidyverse)

# Life expectancy vs. GDP
ggplot(gapminder, aes(y - lifeExp, x = gdpPercap, color = continent)) + 
  geom_point()

# Country life expectancy by year, by continent
ggplot(gapminder, aes(x = year, y = lifeExp, group = country, color = continent)) + 
  geom_point() + 
  geom_line()
