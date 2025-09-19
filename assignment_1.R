
n <- 1000

u_1 <- runif(500,0,1)
u_2 <- runif(500,0,1)

z_1 <- sqrt(-2 * log(u_1)) * cos(2 * pi * u_2)

z_2 <- sqrt(-2 * log(u_1)) * sin(2 * pi * u_2)

z_1
z_2

z <- c(z_1, z_2)

mu <- 5
sigma <- 2
x <- mu + sigma * z

mean(x)
sd(x)

hist(x,
     freq = FALSE,
     ylab = "Density",
     xlab = "$x$")
curve(dnorm(x, mean = mu, sd = sigma),
      col = "red", lwd = 2, add = TRUE)
