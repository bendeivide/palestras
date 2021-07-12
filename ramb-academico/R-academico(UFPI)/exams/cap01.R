# Questoes relacionadas do Capitulo 01 - Disposicoes gerais
# da estatistica
#==========================================================

# Pacote exams
library("exams")


cap1 <- c("Cap01q001.Rmd")


# Exportando em xml
exams2moodle(cap1, n = 51, name = "Cap01", rule = "none")

# Exportando em html
exams2html(cap1, n = 1, dir = getwd(),
           solution = TRUE, nsamp = 1, rule = "none")
