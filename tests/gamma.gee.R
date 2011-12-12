library(ZeligGEE)

data(coalition)

cluster <- c(rep(c(1:62),5),rep(c(63),4))
coalition$cluster <- cluster

z.out <- zelig(duration ~ fract + numst2, 
               id = "cluster",
               model = "gamma.gee",
               data = coalition,
               corstr="exchangeable"
               )

summary(z.out)

#  Setting the explanatory variables at their default values
#  (mode for factor variables and mean for non-factor variables),
#  with numst2 set to the vector 0 = no crisis, 1 = crisis. 
user.prompt()
x.low <- setx(z.out, numst2 = 0)
x.high <- setx(z.out, numst2 = 1)


# Simulate quantities of interest
user.prompt()
s.out <- sim(z.out, x = x.low, x1 = x.high)

user.prompt()
summary(s.out)

# Generate a plot of quantities of interest:
user.prompt()
plot(s.out)









