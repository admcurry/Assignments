#Statistics Problem Sheet 3

#Problem 1

noexpense <- 1 - pnbinom(365-4, 4, 0.005)
noexpense

barplot(1 - pnbinom(1:361, 4, 0.005),
        names.arg = 1:361 + 4,
        ylim = 0:1,
        main = 'Probability of no expenses incurred all year',
        xlab = 'Day',
        ylab = 'Probability')


#Problem 2

notrains <- dpois(0, 5.6)
notrains

barplot(dpois(0:12, 5.6),
        names.arg = 0:12,
        ylim = 0:1/5,
        main = 'Probability of number of trains per hour',
        xlab = 'Trains per hour',
        ylab = 'Probability',
        col = 'Navy',
        border = 'Navy',
        density = 70)
