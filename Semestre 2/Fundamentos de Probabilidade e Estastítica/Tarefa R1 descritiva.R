################## Tarefa R1: descritiva  ##################

#Entrada de dados

x <- c(25,25,25,25,35,35,35,35,35,35,45,45,45,45,45,45,45,45,55,55,55,55,55,55,65,65,65,65)

#Parâmetros de x

l = length(x)
l

max = max(x)
max

min = min(x)
min


# Média

media = mean(x)
media

# Mediana

mediana = median(x)
mediana

# Moda

moda = names(which.max(table(x)))
moda

# Desvio padrão

desvio = sd(x)             # O R calcula o desvio para dados amostrados  (* (n/n-1)^0.5)
desvio

# Variância

var = var(x)
var


# Quartis

i <- x

is <- sort(i)
is
length(is)                # Número de elementos
range(is)                 # Mínimo e máximo
diff((range(is)))         # Amplitude

quartis <- quantile(is, type=4)
quartis
summary(is)               # Resumo da variavel


# Tabela de Fi

h <- x

table_h <- table(cut(h, breaks = seq(20, 70, 10), right = FALSE)) # min, max, tamanho da classe, aberta à direita)
table_h

# Histograma definindo classes e intervalos

hist(h, breaks = seq(20, 70, by = 10), right = FALSE, main = "Exemplo de Histograma", xlab = "Classes", ylab="Frequências", col = "lightblue") 