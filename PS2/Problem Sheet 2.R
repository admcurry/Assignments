#Problem 3

#a
k = 0:50 + 20

coind <- dnbinom(0:50, 20, 0.5 )

dev.new(width=10,height=6,noRStudioGD = TRUE)
barplot(coind ~ k, ylab = 'Probability', xlab = 'Total Coin Tosses',
        main = 'Number of Coins Tossed to See 20 Heads')


#b
sum(k * coind)


#c
sum(coind[31:51]) #Probability you toss coin more than 50 times

sum(coind[0:10]) #Probability you toss coin less than 30 times



#Problem 4

#a
booksd <- dbinom(0:150, 10000, 0.01)
k1 <- 0:150
dev.new(width=10,height=6,noRStudioGD = TRUE)
barplot(booksd ~ k1, ylab = 'Probability', xlab = 'Books Selected',
        main ='Probability of Selecting x Books')


#b
booksdp <- dpois(0:150, 1)
dev.new(width=10,height=6,noRStudioGD = TRUE)
barplot(booksdp ~ k1, ylab = 'Probability', xlab = 'Books Selected',
        main ='Probability of Selecting x Books', xlim=c(0,10))



#Problem 5

#a
dpois(7, 7) #Exactly 7 hits
ppois(6, 7) #Fewer than 7 hits
1 - ppois(6, 7) #At least 7 hits
