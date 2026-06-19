# Grando gráficos - Capítulo 2

# 1- Histograma - ok

# 2 - Boxplot exmplo 2

tempo<-c(50,40,41,17,11,7,22,44,28,21,19,23,37,51,54,42)
boxplot(tempo)

# 3 - Linhas do exmplo 4

ano = 2001:2009
cidadea = c(76,65,69,60,62,69,60,69,70)
cidadeb<-c(56,52,55,54,56,58,57,60,62)

plot(ano, cidadea,type="l",main="Distribuição de chuvas",xlab="ano",ylab="Volume em
mm",col="blue",ylim=c(50,80))
lines(ano, cidadeb,col="red")


# Gráfico Pizza
# Exercício 2.4

x = c(1212843, 1508980, 994095, 406741, 1200712, 925065)
lbs <-  c("Norte", "Vale do Itajaí", "Grande Florianópolis", "Serrana", "Oeste", "Sul")
pie(x, labels = lbs, main = "População por região de Santa Catarina")
pct <- round(x/sum(x)*100)
pct <- round(x/sum(x)*100)
lbs <- paste(lbs, pct)
lbs <- paste(lbs,"%",sep="") # adiciona % 
pie(x,labels = lbs, col=rainbow(length(lbs)),main = "População por região de Santa Catarina")
title(sub = "Exercício 2.4")
legend("topright", legend = x, fill = rainbow(length(x)))
#legend("topleft", legend = lbs, fill = rainbow(length(lbs)))

# Mesmos dados em gáfico de barras
# Exercício 2.4



# Gerar gráfico de barras

#dados <- c(3284, 2208, 1453, 1177, 1003)
dados = x
nomes_barras <- c("Norte", "Vale do Itajaí", "Grande Fln", "Serrana", "Oeste", "Sul")

# Gerar o gráfico de barras
# A resposta da função barplot() (bp) armazena as coordenadas x das barras.
cores = c("red", "blue","green","yellow", "pink","orange")
bp <- barplot(dados,
              names.arg = nomes_barras, 
              main = "População por região de SC", col.main = "purple",
              col = cores) # horiz = TRUE para barras horizontais

# Adicionar os valores acima de cada barra
# pos = 3 significa posicionar o texto acima da coordenada (x, y)
text(x = bp, y = dados,labels = dados, pos = 1, cex = 1.2)


# Radar

library(ggplot2)

# Exemplo de dados
data <- data.frame(
  group = c("A", "A", "A", "A", "A"),
  var = c("Var1", "Var2", "Var3", "Var4", "Var5"),
  value = c(5, 4, 3, 5, 2)
)

# Gráfico de radar
ggplot(data, aes(x = var, y = value, group = group, color = group)) +
  geom_polygon(fill = NA, size = 1) +
  geom_point(size = 2) +
  coord_polar() +
  theme_minimal()


    
    