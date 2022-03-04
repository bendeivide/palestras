## Pacotes
library(knitr)
library(rmarkdown)

## Dados
professores <- read.csv(file = "professores.csv", sep = ";", header = TRUE)

## Loop
for (i in 1:nrow(professores)){
  rmarkdown::render(input = "mail_merge_handout.Rmd",
                    output_format = "pdf_document",
                    output_file = paste(professores$professor[i], ".pdf", sep=''),
                    output_dir = "professores/")
}
