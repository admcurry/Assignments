#Problem 1

#a
2.4 - 3.2

sqrt(2 + cos(3*pi/4)) / (2 + log(3) - exp(1)^(-pi/2))

n <- 1:20
cos_n <- cos(n) / n

sum(cos_n)


#b
vector1 <- c(-3.2, pi, 2.1, 3/4, cos(1.5))
vector1

vector2 <- seq(-12.2 ,38.8, 3)
vector2

#c
c_x <- seq(0, 5, 0.1)
c_y <- sin(c_x)

plot(c_x,c_y, type='l', xlab='x', ylab='sin(x)', main='sin(x) against x')

#d
d_x <- seq(0, 5, 0.5)
d_y <- sin(d_x)

plot(d_x,d_y, type='l', xlab='x', ylab='sin(x)', main='sin(x) against x')



#Problem 2

#a
k <- 0:5
p_k <- dhyper(k, 10, 20, 5)

#b
plot(k, p_k, type='p')
barplot(p_k, names.arg = k, xlab = 'Red Balls Selected', ylab = 'Probability', main = 'Probability of Selecting Red Balls (Without Replacement) (30 Balls)', col = 'Maroon')

'The largest probability is 0.36 - corresponding to 2 balls being selected'

#c
p_k2 <- dbinom(k, 5, 1/3)
barplot(p_k2, names.arg = k, xlab = 'Red Balls Selected', ylab = 'Probability', main = 'Probability of Selecting Red Balls (With Replacement) (30 Balls)', col = 'Navy')

'The largest probability is 0.3292 - corresponding to both 2 and 3 balls being selected'

#d
prob_difference <- p_k - p_k2
prob_difference

'The hypergeometric distribution has the largest probabiltiy, and the binomial distrubutions probabilities are
closer together - but they overall have the same shape.'

plot(k , p_k, type='l', col = 'maroon', main = 'PMF Comparison (30 Balls)', xlab ='Red Balls Selected', ylab = 'Probability')
lines(k, p_k2, col = 'navy')
legend(3.1, 0.35, legend=c("Hypergeometric Distribution", "Binomial Distribution"),
       col=c("maroon", "navy"), lty=1:2, cex=0.8)



#Problem 3

#a
p_k3 <- dhyper(k, 1000, 2000, 5)
barplot(p_k3, names.arg = k, xlab = 'Red Balls Selected', ylab = 'Probability', main = 'Probability of Selecting Red Balls (Without Replacement) (3000 Balls)', col = 'Maroon')

#b
barplot(p_k2, names.arg = k, xlab = 'Red Balls Selected', ylab = 'Probability', main = 'Probability of Selecting Red Balls (With Replacement) (3000 Balls)', col = 'Navy')

#c
plot(k , p_k3, type='l', col = 'maroon', main = 'PMF Comparison (3000 Balls)', xlab ='Red Balls Selected', ylab = 'Probability')
lines(k, p_k2, col = 'navy')
legend(3.1, 0.32, legend=c("Hypergeometric Distribution", "Binomial Distribution"),
       col=c("maroon", "navy"), lty=1:2, cex=0.8)

#d
'In the second senario with 1000 red and 2000 blue, the hypergeometric distribution matches the binomial
distribution almost exactly.'

prob_difference2 <- p_k3 - p_k2
prob_difference2

