library(ZeligGEE)

data(coalition)

cluster <- c(rep(c(1:62),5),rep(c(63),4))
coalition$cluster <- c(rep(c(1:62),5),rep(c(63),4))


z.out <- zelig(
               duration ~ fract + numst2, 
               id = "cluster",
               model = "gamma.gee",
               data = coalition,
               corstr="exchangeable"
               )

x.low <- setx(z.out, numst2 = 0)
x.high <- setx(z.out, numst2 = 1)


s.out <- sim(z.out, x = x.low, x1 = x.high)


summary(s.out)

# Generate a plot of quantities of interest:
plot(s.out)
