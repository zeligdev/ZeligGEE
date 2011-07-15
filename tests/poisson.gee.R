library(gee.zelig)

data(sanction)

sanction$cluster <- c(rep(c(1:15),5),rep(c(16),3))

z.out <- zelig(num ~ target + coop, model = "poisson.gee", id = "cluster", data = sanction, robust=TRUE, corstr="exchangeable")
summary(z.out)

x.out <- setx(z.out)
s.out <- sim(z.out, x = x.out)

summary(s.out)
plot(s.out)









