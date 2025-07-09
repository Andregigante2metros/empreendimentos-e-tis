library(tidyverse)
library(geobr)
library(readr)
library(sf)
library(dplyr)
library(ggplot2)
library(usethis)
library(git2r)

rodoviario <- read_csv("Pastas/Empreendimentos/Transporte/Estruturas Rodoviárias.csv")

maritimo <- read_csv("Pastas/Empreendimentos/Transporte/Transporte Hidroviário Marítimo.csv")

ferroviario <- read_csv("Pastas/Empreendimentos/Transporte/Estruturas Ferroviárias.csv")

fluvial <- read_csv("Pastas/Empreendimentos/Transporte/Transporte Hidroviário Fluvial.csv")
