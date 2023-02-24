library(tidyverse)
#Statistics Problem Sheet 4

#Problem 1

pexp(3, rate = 0.2, lower.tail = F) #a

pexp(4, rate = 0.25) #b

pexp(2, rate = 0.2) + pexp(2, rate = 0.25) #c

#Problem 2

pnorm(100, mean = 125, sd = 24) #a

pnorm(140, mean = 125, sd = 24, lower.tail = F) #b

pnorm(130, mean = 125, sd = 24) - pnorm(110, mean = 125, sd = 24) #c

pnorm(200, mean = 125, sd = 24, lower.tail = F) #d

#Problem 3

#Poisson with lambda = 5
poisson5 <- dpois(0:20, 5)
barplot(poisson5, 
        names.arg = 0:20,
        ylim = 0:1/5,
        main = 'Poisson Distribution',
        sub = 'Mean = 5, Var = 5',
        #xlab = 'Number',
        ylab = 'Probability',)

#Poisson with lambda = 20
poisson20 <- dpois(0:40, 20)
barplot(poisson20,
        names.arg = 0:80,
        ylim = 0:1/10,
        main = 'Poisson Distribution',
        sub = 'Mean = 20, Var = 20',
        #xlab = 'Number',
        ylab = 'Probability',)

#Poisson with lambda = 80
poisson80 <- dpois(0:160, 80)
barplot(poisson80,
        names.arg = 0:160,
        ylim = 0:1/20,
        main = 'Poisson Distribution',
        sub = 'Mean = 80, Var = 80',
        #xlab = 'Number',
        ylab = 'Probability',)

#Problem 3 (with ggplot2)

ggplot(transform(data.frame(x=c(0:20)), y=poisson5), aes(x, y)) + 
  geom_bar(stat="identity", fill = "#FF6666") +
  ggtitle("Poisson with λ = 5") +
  xlab("Number") + ylab("Probability") +
  xlim(-4, 16)

ggplot(transform(data.frame(x=c(0:40)), y=poisson20), aes(x, y)) + 
  geom_bar(stat="identity", fill = "#FF6666") +
  ggtitle("Poisson with λ = 20") +
  xlab("Number") + ylab("Probability")

ggplot(transform(data.frame(x=c(0:160)), y=poisson80), aes(x, y)) + 
  geom_bar(stat="identity", fill = "#FF6666") +
  ggtitle("Poisson with λ = 80") +
  xlab("Number") + ylab("Probability") + 
  xlim(40,120)


