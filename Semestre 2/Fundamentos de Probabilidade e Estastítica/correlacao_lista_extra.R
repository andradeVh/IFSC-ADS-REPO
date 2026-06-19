# Correlação exercícios perda de peso - lista sala extra
# 1 sem outlier

h = c(2,3,4,5,6,7)
p = c(1,2,2,3,4,5)
c = cor(p,h)
print("Correlação", quote = FALSE)
cat("R = ",c)
print("Forte correlação positiva", quote = FALSE)
plot(h,p, pch = 20, cex = 3, col = "blue", main = "Perda de peso x Horas de exercícios", col.main = "green", xlab = "Horas", ylab = "Peso (Kg)")
lm(p~h)
eqp <- lm(p~h)
abline(eqp)

# 2 com outlier
h2 = c(2,3,4,5,6,7,8)
p2 = c(1,2,2,3,4,5,1)
c2 = cor(p2,h2)
print("Nova correlação", quote = FALSE)
cat("R2 = ",c2)
print("Correlação caiu bastante",  quote = FALSE)
print("Outlier?",  quote = FALSE)
plot(h2,p2, pch = 20, cex = 3, col = "red", main = "Perda de peso x Horas de exercícios", col.main = "purple", xlab = "Horas", ylab = "Peso (Kg)")
lm(p2~h2)
eqp2 <- lm(p2~h2)
abline(eqp2)
