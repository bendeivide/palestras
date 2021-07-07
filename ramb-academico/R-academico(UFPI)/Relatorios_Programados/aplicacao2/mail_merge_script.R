## Packages
library(knitr)
library(rmarkdown)

## Data
personalized_info <- read.csv(file = "meeting_times.csv", sep = ";", header = TRUE)

## Loop
for (i in 1:nrow(personalized_info)){
  rmarkdown::render(input = "mail_merge_handout.Rmd",
                    output_format = "pdf_document",
                    output_file = paste("handout_", i, ".pdf", sep=''),
                    output_dir = "handouts/")
}
