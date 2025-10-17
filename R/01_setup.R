## Install packages used in Summative template

# Date: 21/09/2025
# Author: Alasdair B R Stewart

list.of.packages <- c("rmarkdown", "knitr", "tidyverse", "broom", "modelsummary", "devtools")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[, "Package"])]
if (length(new.packages)) install.packages(new.packages)
# Wordcount addin if missing
if (!"wordcountaddin" %in% installed.packages()[, "Package"]) {
  devtools::install_github("benmarwick/wordcountaddin", type = "source", dependencies = TRUE)
}

