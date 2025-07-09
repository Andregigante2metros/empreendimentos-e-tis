library(tidyverse)
library(geobr)
library(readr)
library(sf)
library(dplyr)
library(ggplot2)
library(usethis)
library(git2r)
library(readxl)

concedidas <- read_csv2("Pastas/Empreendimentos/Licenças Concedidas.csv")

glimpse(concedidas)
