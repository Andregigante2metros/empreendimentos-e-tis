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

#TIS DO ACRE

tis_acre <- tis |> 
  filter(uf_sigla %in% c("AC"))

plot(tis_acre$the_geom)

acre <- read_municipality(code_muni = "AC")

plot(acre$geom)

ggplot() +
  geom_sf(data = acre, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_acre, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE ALAGOAS

tis_alagoas <- tis |> 
  filter(uf_sigla %in% c("AL"))

plot(tis_alagoas$the_geom)

alagoas <- read_municipality(code_muni = "AL")

plot(alagoas$geom)

ggplot() +
  geom_sf(data = alagoas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_alagoas, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO AMAPÁ

tis_amapa <- tis |> 
  filter(uf_sigla %in% c("AP"))

plot(tis_amapa$the_geom)

amapa <- read_municipality(code_muni = "AP")

plot(amapa$geom)

ggplot() +
  geom_sf(data = amapa, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_amapa, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO AMAZONAS

tis_amazonas <- tis |> 
  filter(uf_sigla %in% c("AM"))

plot(tis_amazonas$the_geom)

amazonas <- read_municipality(code_muni = "AM")

plot(amazonas$geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_amazonas, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DA BAHIA

tis_bahia <- tis |> 
  filter(uf_sigla %in% c("BA"))

plot(tis_bahia$the_geom)

bahia <- read_municipality(code_muni = "BA")

plot(bahia$geom)

ggplot() +
  geom_sf(data = bahia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_bahia, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO CEARÁ

tis_ceara <- tis |> 
  filter(uf_sigla %in% c("CE"))

plot(tis_bahia$the_geom)

ceara <- read_municipality(code_muni = "CE")

plot(ceara$geom)

ggplot() +
  geom_sf(data = ceara, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_ceara, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO ESPÍRITO SANTO

tis_es <- tis |> 
  filter(uf_sigla %in% c("ES"))

plot(tis_es$the_geom)

es <- read_municipality(code_muni = "ES")

ggplot(es) +
  geom_sf() +
  coord_sf(xlim = c(-42, -39)) +
  theme_minimal()
  
ggplot() +
  geom_sf(data = es, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_es, fill = "darkgreen", color = "black", alpha = 0.6) + # sobreposição TIs
  coord_sf(xlim = c(-42, -39)) + 
  theme_minimal()

# TIS DE GOIÁS

tis_goias <- tis |> 
  filter(uf_sigla %in% c("GO"))

plot(tis_goias$the_geom)

goias <- read_municipality(code_muni = "GO")

plot(goias$geom)

ggplot() +
  geom_sf(data = goias, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_goias, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO MARANHÃO

tis_maranhao <- tis |> 
  filter(uf_sigla %in% c("MA"))

plot(tis_maranhao$the_geom)

maranhao <- read_municipality(code_muni = "MA")

plot(maranhao$geom)

ggplot() +
  geom_sf(data = maranhao, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_maranhao, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO MATO GROSSO

tis_mt <- tis |> 
  filter(uf_sigla %in% c("MT"))

plot(tis_mt$the_geom)

mt <- read_municipality(code_muni = "MT")

plot(mt$geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_mt, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO MATO GROSSO DO SUL

tis_ms <- tis |> 
  filter(uf_sigla %in% c("MS"))

plot(tis_ms$the_geom)

ms <- read_municipality(code_muni = "MS")

plot(ms$geom)

ggplot() +
  geom_sf(data = ms, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_ms, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE MINAS GERAIS

tis_mg <- tis |> 
  filter(uf_sigla %in% c("MG"))

plot(tis_mg$the_geom)

mg <- read_municipality(code_muni = "MG")

plot(mg$geom)

ggplot() +
  geom_sf(data = mg, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_mg, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO PARÁ

tis_para <- tis |> 
  filter(uf_sigla %in% c("PA"))

plot(tis_para$the_geom)

para <- read_municipality(code_muni = "PA")

plot(para$geom)

ggplot() +
  geom_sf(data = para, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_para, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DA PARAÍBA

tis_paraiba <- tis |> 
  filter(uf_sigla %in% c("PB"))

plot(tis_paraiba$the_geom)

paraiba <- read_municipality(code_muni = "PB")

plot(paraiba$geom)

ggplot() +
  geom_sf(data = paraiba, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_paraiba, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO PARANÁ

tis_parana <- tis |> 
  filter(uf_sigla %in% c("PR"))

plot(tis_parana$the_geom)

parana <- read_municipality(code_muni = "PR")

plot(parana$geom)

ggplot() +
  geom_sf(data = parana, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_parana, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE PERNAMBUCO

tis_pernambuco <- tis |> 
  filter(uf_sigla %in% c("PE"))

plot(tis_pernambuco$the_geom)

pernambuco <- read_municipality(code_muni = "PE")

plot(pernambuco$geom)

ggplot() +
  geom_sf(data = pernambuco, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_pernambuco, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  coord_sf(xlim = c(-41, -34), ylim = c(-7,-10)) +
  theme_minimal()

# TIS DO PIAUI

tis_piaui <- tis |> 
  filter(uf_sigla %in% c("PI"))

plot(tis_piaui$the_geom)

piaui <- read_municipality(code_muni = "PI")

plot(piaui$geom)

ggplot() +
  geom_sf(data = piaui, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_piaui, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO RIO DE JANEIRO

tis_rj <- tis |> 
  filter(uf_sigla %in% c("RJ"))

plot(tis_rj$the_geom)

rj <- read_municipality(code_muni = "RJ")

plot(rj$geom)

ggplot() +
  geom_sf(data = rj, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_rj, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DO RIO GRANDE DO SUL

tis_rs <- tis |> 
  filter(uf_sigla %in% c("RS"))

plot(tis_rs$the_geom)

rs <- read_municipality(code_muni = "RS")

plot(rs$geom)

ggplot() +
  geom_sf(data = rs, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_rs, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE RONDONIA

tis_rondonia <- tis |> 
  filter(uf_sigla %in% c("RO"))

plot(tis_rondonia$the_geom)

rondonia <- read_municipality(code_muni = "RO")

plot(rondonia$geom)

ggplot() +
  geom_sf(data = rondonia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_rondonia, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE RORAIMA

tis_roraima <- tis |> 
  filter(uf_sigla %in% c("RR"))

plot(tis_roraima$the_geom)

roraima <- read_municipality(code_muni = "RR")

plot(roraima$geom)

ggplot() +
  geom_sf(data = roraima, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_roraima, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE SANTA CATARINA

tis_sc <- tis |> 
  filter(uf_sigla %in% c("SC"))

plot(tis_sc$the_geom)

sc <- read_municipality(code_muni = "SC")

plot(sc$geom)

ggplot() +
  geom_sf(data = sc, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_sc, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE SÃO PAULO

tis_sp <- tis |> 
  filter(uf_sigla %in% c("SP"))

plot(tis_sp$the_geom)

sp <- read_municipality(code_muni = "SP")

plot(sp$geom)

ggplot() +
  geom_sf(data = sp, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_sp, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE SERGIPE

tis_sergipe <- tis |> 
  filter(uf_sigla %in% c("SE"))

plot(tis_sergipe$the_geom)

sergipe <- read_municipality(code_muni = "SE")

plot(sergipe$geom)

ggplot() +
  geom_sf(data = sergipe, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_sergipe, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# TIS DE TOCANTINS

tis_tocantins <- tis |> 
  filter(uf_sigla %in% c("TO"))

plot(tis_tocantins$the_geom)

tocantins <- read_municipality(code_muni = "TO")

plot(tocantins$geom)

ggplot() +
  geom_sf(data = tocantins, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = tis_tocantins, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()
