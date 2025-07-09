library(tidyverse)
library(geobr)
library(readr)
library(sf)
library(dplyr)
library(ggplot2)
library(usethis)
library(git2r)

uhes <- read_csv("Pastas/Empreendimentos/Minas e Energia/Usinas Hidreletricas.csv")

eolicas_offshore <- read_csv("Pastas/Empreendimentos/Minas e Energia/Usinas Eólicas.csv")

linhas_transmissao <- read_csv("Pastas/Empreendimentos/Minas e Energia/Sistemas de Transmissao.csv")

linhas_distribuicao <- read_csv("Pastas/Empreendimentos/Minas e Energia/Sistemas de Distribuição.csv")

peq_centrais_he <- read_csv("Pastas/Empreendimentos/Minas e Energia/Pequenas Centrais Hidrelétricas.csv")

usinas_eolicas <- read_csv("Pastas/Empreendimentos/Minas e Energia/Usinas Eólicas Terrestres.csv")                

centrais_geracao_he <- read_csv("Pastas/EmpreendimentosMinas e Energia/Centrais de Geração Hidrelétrica.csv")

dutos <- read_csv("Pastas/EmpreendimentosMinas e Energia/Dutos Terrestres.csv")

mineracao <- read_csv("Pastas/Empreendimentos/Minas e Energia/Mineração.csv")
