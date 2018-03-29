# SWC R Intro

getwd()

# read in cat data
cats <- read.csv("data/feline-data.csv")
cats$coat
cats$weight + 2
typeof(cats)

quiz_vector_1 <-  c(2, 6, '3')
typeof(quiz_vector_1)
quiz_vector_2 <- c('a', TRUE)
typeof(quiz_vector_2)
quiz_vecotr_3 <- c(0, TRUE)
typeof(quiz_vecotr_3)
# factors
str(cats$coat)
cats$coat
levels(cats$coat)
cats$coat <- factor(cats$coat, levels = c("tabby", "calico", "black"))

 matrix (1:12, ncol=2, byrow=TRUE)
 
 #dataframes
 gapminder <- read.csv("data/gapminder-FiveYearData.csv")
 str(gapminder)
 x <- c(5.4, 6.2, 7.1, 4.8,7.5)
 names(x) <- c('a','b','c','d','e')
 names(x) != c('a', 'b')
 !names(x) %in% c('a','c')
 print(x)
 print(x[2:4])
 print(x[-c(1,4)])
x[x > 4 & x < 7]
x[c('b','c','d')]

head(gapminder$pop)
head(gapminder[3])
head(gapminder["pop"])
gapminder[1:3, ]
gapminder[gapminder$year == 1957,]
gapminder[,-c(1:4)]
gapminder[gapminder$lifeExp > 80,]
gapminder[c(1, 4, 5)]

#REcap: Subsettin

x <- 1:10

x[c(TRUE, FALSE, TRUE)]

#vectorization and subsetting
x[x > 3]

#Gapminder
head(gapminder)
gapminder[gapminder$pop < 100000, c(TRUE, FALSE)]
