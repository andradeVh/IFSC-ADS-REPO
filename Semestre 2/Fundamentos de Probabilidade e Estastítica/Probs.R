################ Distribuições de Probabilidades #################

n <- 100

set.seed(13)     # define a semente geradora
x <- rnorm(n)
mx = mean(x)
mx

set.seed(13)
y <- rnorm(n)
my = mean(y)
my

identical(mean(x), mean(y))    # verifica se são iguais



###################################

# Moeda (Binomial) 
# PDF numero exato de sucessos

x = 0:3
cara = dbinom(x,3,0.5)
cara

# CDF acumulada

## Numero de caras em n lançamentos (acumulada à esquerda)

cara = pbinom(1, size=5, prob=0.5)    # n = size   P(x<=1) x = 0 ou x = 1
cara

cara = pbinom(1, size=5, prob=0.5, lower.tail=FALSE)    # P(x>=1) acumulada à direita
cara


# Dado normal
set.seed(7228) # Garante reprodutibilidade

d <- 1:6
p <- c(0.166, 0.166, 0.166, 0.166, 0.166, 0.166) # Probabilidades iguais
d <- sample(d, 1000, replace = TRUE, prob = p)
table(d)
table(d)/1000 # Proporção dos resultados

#Dado viciado

d <- 1:6
p <- c(0.333, 0.133, 0.133, 0.133, 0.133, 0.133) # Probabilidades diferentes
d <- sample(d, 1000, replace = TRUE, prob = p)
table(d)
table(d)/1000 # Proporção dos resultados


# D Normal

#rnorm(pontos,media, devio)

y = rnorm(1000000,20,5)
hist(y)

# pnorm(ponto,media,desvio,lower.tail=TRUE ou FALSE)

w = pnorm(40,60,20,lower.tail=TRUE)

w

# Binomial
# Casal com 3 filhos. Quantos meninos?
x = 0:3
fx = dbinom(x,3,0.5)
plot(x,fx,type="h")
nomes_barras <- c("0", "1", "2", "3")

bp <- barplot(fx,
              names.arg = nomes_barras, 
              main = "Probabilidade filhos", col.main = "purple")










# Poisson

# dpois(x, lambda): Função de densidade PDF (probabilidade exata de x eventos).
# ppois(q, lambda): Função de distribuição acumulada CDF (probabilidade de até q eventos).
# rpois(n, lambda): Gera n números aleatórios seguindo a distribuição de Poisson.


