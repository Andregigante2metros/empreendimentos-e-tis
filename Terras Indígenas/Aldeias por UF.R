library(tidyverse)
library(geobr)
library(readr)
library(sf)
library(dplyr)
library(ggplot2)

aldeias <- read_csv("Terras Indígenas no Brasil/Aldeias (CSV).csv")

aldeias <- aldeias |>
  mutate(the_geom = st_as_sfc(the_geom, crs = 4674)) |>
  st_as_sf()

# ALDEIAS DO ACRE

aldeias_ac <- aldeias |> 
  filter(nomuf %in% c("Acre"))

plot(aldeias_ac$the_geom)

acre <- read_municipality(code_muni = "AC")

plot(acre$geom)

ggplot() +
  geom_sf(data = acre, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ac, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE ALAGOAS

aldeias_al <- aldeias |> 
  filter(nomuf %in% c("Alagoas"))

plot(aldeias_al$the_geom)

alagoas <- read_municipality(code_muni = "AL")

plot(alagoas$geom)

ggplot() +
  geom_sf(data = alagoas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_al, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO AMAPÁ

aldeias_ap <- aldeias |> 
  filter(nomuf %in% c("Amapá"))

plot(aldeias_ap$the_geom)

amapa <- read_municipality(code_muni = "AP")

plot(amapa$geom)

ggplot() +
  geom_sf(data = amapa, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ap, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO AMAZONAS

aldeias_am <- aldeias |> 
  filter(nomuf %in% c("Amazonas"))

plot(aldeias_am$the_geom)

amazonas <- read_municipality(code_muni = "AM")

plot(amazonas$geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_am, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DA BAHIA

aldeias_ba <- aldeias |> 
  filter(nomuf %in% c("Bahia"))

plot(aldeias_ba$the_geom)

bahia <- read_municipality(code_muni = "BA")

plot(bahia$geom)

ggplot() +
  geom_sf(data = bahia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ba, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO CEARÁ

aldeias_ce <- aldeias |> 
  filter(nomuf %in% c("Ceará"))

plot(aldeias_ce$the_geom)

ceara <- read_municipality(code_muni = "CE")

plot(ceara$geom)

ggplot() +
  geom_sf(data = ceara, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ce, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO DISTRITO FEDERAL

aldeias_df <- aldeias |> 
  filter(nomuf %in% c("Distrito Federal"))

plot(aldeias_df$the_geom)

df <- read_municipality(code_muni = "DF")

plot(df$geom)

ggplot() +
  geom_sf(data = df, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_df, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO ESPÍRITO SANTO

aldeias_es <- aldeias |> 
  filter(nomuf %in% c("Espírito Santo"))

plot(aldeias_es$the_geom)

es <- read_municipality(code_muni = "ES")

plot(es$geom)

ggplot() +
  geom_sf(data = es, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_es, fill = "darkgreen", color = "black", alpha = 0.6) + # sobreposição TIs
  coord_sf(xlim = c(-42, -39), ylim = c(-17.9,-21.2)) + 
  theme_minimal()

# ALDEIAS DE GOIÁS

aldeias_go <- aldeias |> 
  filter(nomuf %in% c("Goiás"))

plot(aldeias_go$the_geom)

goias <- read_municipality(code_muni = "GO")

plot(goias$geom)

ggplot() +
  geom_sf(data = goias, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_go, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO MARANHÃO

aldeias_ma <- aldeias |> 
  filter(nomuf %in% c("Maranhão"))

plot(aldeias_ma$the_geom)

maranhao <- read_municipality(code_muni = "MA")

plot(maranhao$geom)

ggplot() +
  geom_sf(data = maranhao, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ma, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO MATO GROSSO

aldeias_mt <- aldeias |> 
  filter(nomuf %in% c("Mato Grosso"))

plot(aldeias_mt$the_geom)

mt <- read_municipality(code_muni = "MT")

plot(mt$geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_mt, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO MATO GROSSO DO SUL

aldeias_ms <- aldeias |> 
  filter(nomuf %in% c("Mato Grosso do Sul"))

plot(aldeias_ms$the_geom)

ms <- read_municipality(code_muni = "MS")

plot(ms$geom)

ggplot() +
  geom_sf(data = ms, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ms, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE MINAS GERAIS

aldeias_mg <- aldeias |> 
  filter(nomuf %in% c("Minas Gerais"))

plot(aldeias_mg$the_geom)

mg <- read_municipality(code_muni = "MG")

plot(mg$geom)

ggplot() +
  geom_sf(data = mg, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_mg, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO PARÁ

aldeias_pa <- aldeias |> 
  filter(nomuf %in% c("Pará"))

plot(aldeias_pa$the_geom)

pará <- read_municipality(code_muni = "PA")

plot(pará$geom)

ggplot() +
  geom_sf(data = pará, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_pa, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DA PARAÍBA

aldeias_pb <- aldeias |> 
  filter(nomuf %in% c("Paraíba"))

plot(aldeias_pb$the_geom)

paraiba <- read_municipality(code_muni = "PB")

plot(paraiba$geom)

ggplot() +
  geom_sf(data = paraiba, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_pb, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO PARANÁ

aldeias_pr <- aldeias |> 
  filter(nomuf %in% c("Paraná"))

plot(aldeias_pr$the_geom)

parana <- read_municipality(code_muni = "PR")

plot(parana$geom)

ggplot() +
  geom_sf(data = parana, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_pr, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE PERNAMBUCO

aldeias_pe <- aldeias |> 
  filter(nomuf %in% c("Pernambuco"))

plot(aldeias_pe$the_geom)

pernambuco <- read_municipality(code_muni = "PE")

plot(pernambuco$geom)

ggplot() +
  geom_sf(data = pernambuco, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_pe, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  coord_sf(xlim = c(-41, -34), ylim = c(-7,-10)) +
  theme_minimal()

# ALDEIAS DO PIAUI

aldeias_pi <- aldeias |> 
  filter(nomuf %in% c("Piauí"))

plot(aldeias_pi$the_geom)

piaui <- read_municipality(code_muni = "PI")

plot(piaui$geom)

ggplot() +
  geom_sf(data = piaui, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_pi, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO RIO DE JANEIRO

aldeias_rj <- aldeias |> 
  filter(nomuf %in% c("Rio de Janeiro"))

plot(aldeias_rj$the_geom)

rj <- read_municipality(code_muni = "RJ")

plot(rj$geom)

ggplot() +
  geom_sf(data = rj, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_rj, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO RIO GRANDE DO NORTE

aldeias_rn <- aldeias |> 
  filter(nomuf %in% c("Rio Grande do Norte"))

plot(aldeias_rn$the_geom)

rn <- read_municipality(code_muni = "RN")

plot(rn$geom)

ggplot() +
  geom_sf(data = rn, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_rn, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DO RIO GRANDE DO SUL

aldeias_rs <- aldeias |> 
  filter(nomuf %in% c("Rio Grande do Sul"))

plot(aldeias_rs$the_geom)

rs <- read_municipality(code_muni = "RS")

plot(rs$geom)

ggplot() +
  geom_sf(data = rs, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_rs, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE RONDONIA

aldeias_ro <- aldeias |> 
  filter(nomuf %in% c("Rondônia"))

plot(aldeias_ro$the_geom)

rondonia <- read_municipality(code_muni = "RO")

plot(rondonia$geom)

ggplot() +
  geom_sf(data = rondonia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ro, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE RORAIMA

aldeias_rr <- aldeias |> 
  filter(nomuf %in% c("Roraima"))

plot(aldeias_rr$the_geom)

roraima <- read_municipality(code_muni = "RR")

plot(roraima$geom)

ggplot() +
  geom_sf(data = roraima, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_rr, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE SANTA CATARINA

aldeias_sc <- aldeias |> 
  filter(nomuf %in% c("Santa Catarina"))

plot(aldeias_sc$the_geom)

sc <- read_municipality(code_muni = "SC")

plot(sc$geom)

ggplot() +
  geom_sf(data = sc, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_sc, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE SÃO PAULO

aldeias_sp <- aldeias |> 
  filter(nomuf %in% c("São Paulo"))

plot(aldeias_sp$the_geom)

sp <- read_municipality(code_muni = "SP")

plot(sp$geom)

ggplot() +
  geom_sf(data = sp, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_sp, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE SERGIPE

aldeias_se <- aldeias |> 
  filter(nomuf %in% c("Sergipe"))

plot(aldeias_se$the_geom)

sergipe <- read_municipality(code_muni = "SE")

plot(sergipe$geom)

ggplot() +
  geom_sf(data = sergipe, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_se, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# ALDEIAS DE TOCANTINS

aldeias_to <- aldeias |> 
  filter(nomuf %in% c("Tocantins"))

plot(aldeias_to$the_geom)

tocantins <- read_municipality(code_muni = "TO")

plot(tocantins$geom)

ggplot() +
  geom_sf(data = tocantins, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_to, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()
