---
title: "Assignment 0"
author: "Malcolm Fedrigo and Michael Semczyszyn"
date: "Feburary 15, 2018"
output: pdf_document
---

#ToDo 1
percent = ((2016-2014)/(2014-1998)*100)
percent

#ToDo 2
g = 2016
i = 2014
t = 1998
per = ((g-i)/(i-t)*100)
per

#ToDo 3
s = sum(c(4,5,8,11))
s

#ToDo 4
ranplots = rnorm(100)
plot(ranplots)

#ToDo 5
?sqrt

#ToDo 6
multiplots = function() {
  randplots = rnorm(100)
  plot(randplots)
}
for (i in 1:10) {
  multiplots()
}

#ToDo 7
P = c(seq(31, 60))
Q=matrix(P,ncol = 5,nrow = 6)
Q

#ToDo 8
x1 = as.numeric(c(rnorm(100)))
x2 = as.numeric(c(rnorm(100)))
x3 = as.numeric(c(rnorm(100)))
t = data.frame(a = x1, b = x1+x2, c = x1+x2+x3)
plot(t)
sapply(t, sd)

#ToDo 9
x1 = as.numeric(c(rnorm(100)))
x2 = as.numeric(c(rnorm(100)))
x3 = as.numeric(c(rnorm(100)))
t = data.frame(a = x1, b = x1+x2, c = x1+x2+x3)
plot(t$a, type="l", ylim = range(t), lwd=3, col=rgb(1, 0, 0, 0.3))
lines(t$b, type="s", lwd=2, col=rgb(0.3, 0,.4, 0.3, 0.9))
points(t$c, pch=20, cex=4, col=rgb(0, 0, 1, 0.3))

#ToDo 10
r = read.table(file="/Users/malcolmfedie/Documents/GitHub/SRT411-Assignment-0/tst1.txt", header = TRUE)
g = r["g"] * 5
write.table(g, file="/Users/malcolmfedie/Documents/GitHub/SRT411-Assignment-0/tst2.txt", row.names = FALSE)

#ToDo 11
m = sqrt(c(rnorm(1:100)))
sf = na.omit(m)
mean(sf)

#ToDo 12
x = strptime( c("15022018", "06122014", "01012018"), format="%d%m%Y")
y = c("0", "4", "10")
plot(x, y, type="l", col="blue")

#ToDo 13
num = c(1:100)
for (i in num) {
  if(i < 5 | i > 90) {
    num[i] = num[i] * 10
  }
  else{
    num[i] = num[i] * 0.1
  }
}
num

#ToDo 14
calc = function(a) {
  for (i in a) {
    if(i < 5 | i > 90) {
      a[i] = a[i] * 10
    }
    else{
      a[i] = a[i] *0.1
    }
  }
  a
}
newvec = readline(prompt = "Enter vector name: ")
calc(newvec)
