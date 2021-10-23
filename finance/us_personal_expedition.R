# dataset: USPersonalExpediture
data <- USPersonalExpenditure
d <- data.frame(data)
plot(d)
names(d)
head(d)
class(d)

lm(formula(d$X1960 ~ d$X1955 + d$X1940))
d
