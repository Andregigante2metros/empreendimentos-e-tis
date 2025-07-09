library(tidyverse)
library(geobr)
library(readr)
library(sf)
library(dplyr)
library(ggplot2)

tis <- read_csv("Terras Indígenas no Brasil/Terras Indígenas.csv")

glimpse(tis)

tis <- tis |>
  mutate(the_geom = st_as_sfc(the_geom, crs = 4674)) |>
  st_as_sf()

#TERRITÓRIOS INDÍGENAS DA REGIÃO NORTE

tis_norte <- tis |> 
  filter(uf_sigla %in% c("AC", "AP", "AM", "PA", "RO", "RR", "TO"))

plot(tis_norte$the_geom)

# TERRITÓRIOS INDÍGENAS DA REGIÃO CENTRO-OESTE

tis_centro_oeste <- tis |> 
  filter(uf_sigla %in% c("GO", "MT", "MS", "DF"))

plot(tis_centro_oeste$the_geom)

# TERRITÓRIOS INDÍGENAS DA REGIÃO NORDESTE

tis_nordeste <- tis |> 
  filter(uf_sigla %in% c("AL", "BA", "CE", "MA", "PB", "PE", "PI", "RN", "SE"))

plot(tis_nordeste$the_geom)

# TERRITÓRIOS INDÍGENAS DA REGIÃO SUDESTE

tis_sudeste <- tis |> 
  filter(uf_sigla %in% c("ES", "MG", "RJ", "SP"))

plot(tis_sudeste$the_geom)

# TERRITÓRIOS INDÍGENAS DA REGIÃO SUL

tis_sul <- tis |> 
  filter(uf_sigla %in% c("PR", "RS", "SC"))

plot(tis_sul$the_geom)
