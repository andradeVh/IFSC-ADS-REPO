# 1) Carregar os dados abrindo uma janela de seleção
caminho <- file.choose()
dados <- read.csv(caminho)

# Seleção das variáveis
vars_selecionadas <- dados[, c("exam_score", "study_hours_per_day", "attendance_percentage")]

# 2) Médias
medias <- colMeans(vars_selecionadas, na.rm = TRUE)
print("--- Médias ---")
print(medias)

# 3) Desvios Padrão
desvios <- apply(vars_selecionadas, 2, sd, na.rm = TRUE)
print("--- Desvios Padrão ---")
print(desvios)

# 4) Correlações
cor_estudo <- cor(dados$exam_score, dados$study_hours_per_day, use = "complete.obs")
cor_presenca <- cor(dados$exam_score, dados$attendance_percentage, use = "complete.obs")

cat("\nCorrelação (Notas x Estudo):", round(cor_estudo, 4))
cat("\nCorrelação (Notas x Presença):", round(cor_presenca, 4), "\n")

# 5) Gráficos
par(mfrow=c(1,2))
plot(dados$study_hours_per_day, dados$exam_score, 
     main="Notas vs Estudo", xlab="Horas de Estudo", ylab="Nota", col="blue", pch=16)
abline(lm(exam_score ~ study_hours_per_day, data=dados), col="red", lwd=2)

plot(dados$attendance_percentage, dados$exam_score, 
     main="Notas vs Frequência", xlab="% Frequência", ylab="Nota", col="darkgreen", pch=16)
abline(lm(exam_score ~ attendance_percentage, data=dados), col="red", lwd=2)

# 6) Equação da Correlação Conjunta (Regressão Múltipla)
modelo <- lm(exam_score ~ study_hours_per_day + attendance_percentage, data = dados)
c <- coef(modelo)

cat("\n--- Equação da Regressão ---")
cat(sprintf("\nExam_Score = %.2f + (%.2f * Study_Hours) + (%.2f * Attendance)\n", 
            c[1], c[2], c[3]))