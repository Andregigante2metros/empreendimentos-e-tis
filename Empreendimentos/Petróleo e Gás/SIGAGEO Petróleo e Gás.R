library(tidyverse)
library(geobr)
library(readr)
library(sf)
library(dplyr)
library(ggplot2)
library(usethis)
library(git2r)

aquisicao <- read_csv("Pastas/Empreendimentos/Petróleo e Gás/Aquisição de Petróleo e Gás.csv")

perfuracao <- read_csv("Pastas/Empreendimentos/Petróleo e Gás/Perfuração de Petróleo e Gás.csv")

onshore <- read_csv("Pastas/Empreendimentos/Petróleo e Gás/Petróleo e Gás Onshore.csv")

producao <- read_csv("Pastas/Empreendimentos/Petróleo e Gás/Produção de Petróleo e Gás.csv")
