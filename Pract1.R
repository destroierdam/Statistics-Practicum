versani simple R
mppy@abv.bg



komentari - #
  Ctrl + Enter - run line of script
is.numeric(1)
arr = c(1, 2, 3)
apropos("asd")

a = seq(from = 1,to = 500, by = 2)
print(a)
a

vector = 1:5
vector
vector -2
vector = vector -2

arr1 = 1:10
arr2 = 1:10

arr1[arr2 >= 5]



rm(b) - remove


length(arr)
max(arr)
min(arr)


Variacionen red



zar = sample(1:6, 10, replace = TRUE)
table(zar)
mean(zar)
sd(zar)



# zadachi

miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
x = diff(miles)
max(x)
mean(x)
min(x)
x


times = c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)
max(times)
mean(times)
min(times)
times[times == 24] = 18
mean(times)

sum(times >= 20)



bill = c(46 ,33, 39, 37, 46, 30, 48 ,32 ,49, 35, 30, 48)
sum(bill)
max(bill)
x = length(bill[bill>40])
x/length(bill)*100
x
sum(bill[bill>40])



arr = c(8, 3, 8, 7, 15, 9, 12, 4, 9, 10)
?matrix
m = matrix(arr, 5, 2, FALSE, list(c("r1", "r2", "r3", "r4", "r5")))