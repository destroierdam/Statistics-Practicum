# Zad. 1
# a)
my_data = read.csv("C:/Users/Admin/Downloads/R/movie.csv", header = TRUE)

# b)
f_nr = 71764
set.seed(f_nr)
indices = sample(1:3800, 3000, replace = FALSE)
my_data_2 = my_data[indices, ]

# v)
ls()
colnames(my_data_2)

# g)
summary(my_data_2)

# d)
# color - kachestveni
# num_critic_for_review - diskretni
# duration - diskretni
# gross - diskretni
# ...

# e)
min(my_data_2$title_year[which(my_data_2$color == " Black and White")])

# zh)
unique(my_data_2$title_year[which(my_data_2$color == "Color")])
unique(my_data_2$title_year[my_data_2$color == "Color"])
# z)
hist(my_data_2$gross)

# i)

keep = my_data_2$country == "Germany" + 
              my_data_2$country == "UK" + 
              my_data_2$country == "France"
keep
dataI = my_data_2[keep, ]
View(dataI)
#table(dataI$country,dataI$color)
dataI$country
View(table(dataI$country, dataI$color))

?table

# k)
boxplot(my_data_2$num_user_for_reviews,x = my_data_2$color)
mean(my_data_2$num_user_for_reviews[my_data_2$color == " Black and White"])
mean(my_data_2$num_user_for_reviews[my_data_2$color == "Color"])

# Zad. 2
data2 = my_data_2[my_data_2$country != "USA",]
plot(y = data2$num_user_for_reviews, data2$num_voted_users)
cor(data2$num_user_for_reviews, data2$num_voted_users)
simple.lm(data2$num_user_for_reviews, data2$num_voted_users)

abline(lm(data2$num_user_for_reviews ~ data2$num_voted_users))

simple.lm(data2$num_voted_users, data2$num_user_for_reviews)[1]

1.033117e+02 + 2.327882e-03 * 700000

# Zad. 3
71764
A = 1
B = 7
C = 6
D = 4

P(min(1, A) < x < D+3 | D+4 <= x <= D+8) ; x ~ Po(D+1)
P(1 < x < 7 | 8 <= x <= 12) ; x ~ Po(5)

ppois(7, lambda = 5) - ppois(1, lambda = 5) + 
ppois(12, lambda = 5) - ppois(7, lambda = 5) 

?ppois

P(-2 < T <= x) = 0.36 ; T ~ t(6)

qt(pt(-2, 6) + 0.36, 6)  



?qt


#
n = 5
p = 0.75
x = rbinom(100, n, p) 
x

hist(x)
## Zad. 1

## b)

set.seed(71764)


## v)
names()

## d)

## 2 zad
x = my_data[my_data$country != "USA",]$num_voted_users
y = my_data[my_data$country != "USA",]$num_user_for_reviews
x
y
cor(x, y)
?abline()
abline(lm(x, y))

plot(x, y, col = "blue")
?plot
-1 <= cor(x, y) <= 1
simple.lm(x, y)
line(x, y)

?simple.lm

?dbinom()

# 6.2
x = rnorm(10, mean = 5, sd = 5)
dnorm()

?rpois





