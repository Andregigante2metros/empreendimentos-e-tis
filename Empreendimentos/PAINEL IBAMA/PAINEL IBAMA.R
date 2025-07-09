library(tidyverse)
library(geobr)
library(readr)
library(sf)
library(dplyr)
library(ggplot2)
library(usethis)
library(git2r)
library(readxl)

# https://dd.serpro.gov.br/publico/sense/app/4fd9ebcc-98ff-4212-bc36-6da0b7628ed2/sheet/f3e7df51-4984-4d6b-936c-89ba28104fb7/state/analysis

PAINEL_IBAMA <- read_excel("Pastas/Empreendimentos/PAINEL IBAMA/PAINEL IBAMA.xlsx")
