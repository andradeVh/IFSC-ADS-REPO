################## Estatísitca Descritiva no R: exemplos  ################################

#Entrada de dados

x = c(1,1,2,2,2,23,4,5,6,7,8,8,9,9,9,9,9,9)

#Parâmetros de x

l = length(x)
l

max = max(x)
max

min = min(x)
min


#Média

media = mean(x)
media

# media geometrica: instalar pacote psych
# instal.packages("psych")

mg = psych::geometric.mean(x)
mg

# Mediana

mediana = median(x)
mediana

#Moda

moda = names(which.max(table(x)))
moda

# Desvio padrão

desvio = sd(x)         # O R calcula o desvio para dados amostrados  (* (n/n-1)^0.5)
desvio

# Variância

var = var(x)
var


# Quartis

i <- c(20, 24, 17, 18, 18, 22, 23, 24, 28, 28, 25, 25, 25, 23, 23, 18, 19, 19, 17, 20)

is <- sort(i)
is
length(is)                # Número de elementos
range(is)                 # Mínimo e máximo
diff((range(is)))         # Amplitude

quartis <- quantile(is, type=4)
quartis
summary(is)         # resumo da variavel


# Tabela de Fi

h <- c(6, 6, 7, 7, 8, 10,10, 11, 11, 11, 11, 11, 12, 12, 13, 14, 14, 14, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 24, 24, 24, 25, 25, 25, 25, 26, 26, 27, 27, 27, 27, 28, 28, 29, 29, 30, 31, 32, 32, 33)

table_h <- table(cut(h, breaks = seq(6, 34, 4), right = FALSE)) # min, max, tamanho da classe, aberta à direita)
table_h

#Histograma definindo classes e intervalos

hist(h, breaks = seq(6,34, length.out = 8), right = FALSE, main = "Exemplo de Histograma", xlab = "Classes", ylab="Frequências", col = "lightblue") 

# length.out = classes +1, intervalo fechado à direita



