# vec = c(1, 2, 3, 0)
# vec[2] - взима втория елемент
# vec[-2] - взима всички без втория
# which(vec<2) - връща индекси
# vec[vec<2] -  връща елементи
# sum(vec[vec<2]) - връща сумата

# инсталиране на библиотеки:

# install.packages("UsingR")
# library(UsingR)
# View(homedata)

# четене на файлове
# x = read.csv("file.csv")
# y = read.table("table.csv")


# zad 3. ot minalia put
# a)
attach(survey)
table(Sex)
table(Sex)[2]

# ili
table(Sex, useNA = "always")

# ili

sum(Sex == "Male", na.rm = TRUE )

# ili

length(Sex[Sex == "Male"]) # vzema NA

# b)
sum(table(Sex, Smoke)["Male", -2])

# v)

# triabva da mahnem i NA

a = which(is.na(Height))
b = which(is.na(Sex))
s = survey[c(-b, -a), ]
mean(Height[Sex == "Male"])