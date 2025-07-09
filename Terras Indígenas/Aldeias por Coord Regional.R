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

# ADICIONANDO OS POLÍGONOS DE UF NO ENVIRONMENT

acre <- read_municipality(code_muni = "AC")
alagoas <- read_municipality(code_muni = "AL")
amapa <- read_municipality(code_muni = "AP")
amazonas <- read_municipality(code_muni = "AM")
bahia <- read_municipality(code_muni = "BA")
ceara <- read_municipality(code_muni = "CE")
df <- read_municipality(code_muni = "DF")
es <- read_municipality(code_muni = "ES")
goias <- read_municipality(code_muni = "GO")
maranhao <- read_municipality(code_muni = "MA")
mt <- read_municipality(code_muni = "MT")
ms <- read_municipality(code_muni = "MS")
mg <- read_municipality(code_muni = "MG")
para <- read_municipality(code_muni = "PA")
paraiba <- read_municipality(code_muni = "PB")
parana <- read_municipality(code_muni = "PR")
pernambuco <- read_municipality(code_muni = "PE")
piaui <- read_municipality(code_muni = "PI")
rj <- read_municipality(code_muni = "RJ")
rn <- read_municipality(code_muni = "RN")
rs <- read_municipality(code_muni = "RS")
rondonia <- read_municipality(code_muni = "RO")
roraima <- read_municipality(code_muni = "RR")
sc <- read_municipality(code_muni = "SC")
sp <- read_municipality(code_muni = "SP")
sergipe <- read_municipality(code_muni = "SE")
tocantins <- read_municipality(code_muni = "TO")

# CR ALTO PURUS

aldeias_apurus <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL ALTO PURUS"))

plot(aldeias_apurus$the_geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = acre, fill = "gray95", color = "gray50")+
  geom_sf(data = aldeias_apurus, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR AMAPÁ E NORTE DO PARÁ

aldeias_apnp <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL AMAPÁ E NORTE DO PARÁ"))

plot(aldeias_apnp$the_geom)

ggplot() +
  geom_sf(data = amapa, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = para, fill = "gray95", color = "gray50")+
  geom_sf(data = aldeias_apnp, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR ARAGUAIA TOCANTINS

aldeias_at <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL ARAGUAIA TOCANTINS"))

plot(aldeias_at$the_geom)

ggplot() +
  geom_sf(data = tocantins, fill = "gray95", color = "gray50") + # mapa base com municípios
  geom_sf(data = maranhao, fill = "gray95", color = "gray50") +
  geom_sf(data = para, fill = "gray95", color = "gray50") +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +
  geom_sf(data = goias, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_at, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR BAIXO SÃO FRANCISCO

aldeias_bsf <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL BAIXO SÃO FRANCISCO"))

plot(aldeias_bsf$the_geom)

ggplot() +
  geom_sf(data = pernambuco, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = alagoas, fill = "gray95", color = "gray50") +
  geom_sf(data = bahia, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_bsf, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  coord_sf(xlim = c(-46.5, -33.9), ylim = c(-7,-18.1)) +
  theme_minimal()

# CR CENTRO-LESTE DO PARÁ

aldeias_clp <- aldeias |> 
filter(nome_cr %in% c("COORDENACAO REGIONAL CENTRO-LESTE DO PARÁ", "COORDENACAO REGIONAL CENTRO-LESTES DO PARÁ"))

plot(aldeias_clp$the_geom)

ggplot() +
  geom_sf(data = para, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_clp, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR CACOAL

aldeias_cacoal <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE CACOAL"))

plot(aldeias_cacoal$the_geom)

ggplot() +
  geom_sf(data = rondonia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = mt, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_cacoal, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR CAMPO GRANDE
# Coordenadas não correspondem ao mapa do MS

aldeias_cg <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE CAMPO GRANDE"))

plot(aldeias_cg$the_geom)

ggplot() +
  geom_sf(data = ms, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_cacoal, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR CUIABÁ

aldeias_cuiaba <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE CUIABA"))

plot(aldeias_cuiaba$the_geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = para, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_cuiaba, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR DOURADOS

aldeias_dourados <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE DOURADOS"))

plot(aldeias_dourados$the_geom)

ggplot() +
  geom_sf(data = ms, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_dourados, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR GUAJARA MIRIM

aldeias_gm <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE GUAJARA MIRIM"))

plot(aldeias_gm$the_geom)

ggplot() +
  geom_sf(data = rondonia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_gm, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR GUARAPUAVA

aldeias_guarapuava <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE GUARAPUAVA"))

plot(aldeias_guarapuava$the_geom)

ggplot() +
  geom_sf(data = parana, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = sp, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_guarapuava, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR JI PARANA

aldeias_jip <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE JI PARANA"))

plot(aldeias_jip$the_geom)

ggplot() +
  geom_sf(data = rondonia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = mt, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_jip, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR JOAO PESSOA

aldeias_jpessoa <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE JOAO PESSOA"))

plot(aldeias_jpessoa$the_geom)

ggplot() +
  geom_sf(data = paraiba, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_jpessoa, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR MANAUS

aldeias_manaus <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE MANAUS"))

plot(aldeias_manaus$the_geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = roraima, fill = "gray95", color = "gray50") +
  geom_sf(data = para, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_manaus, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR MG E ES

aldeias_mges <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE MINAS GERAIS E ESPIRITO SANTOS"))

plot(aldeias_mges$the_geom)

ggplot() +
  geom_sf(data = mg, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = es, fill = "gray95", color = "gray50") +
  geom_sf(data = bahia, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_mges, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR PASSO FUNDO 

aldeias_pfundo <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE PASSO FUNDO"))

plot(aldeias_pfundo$the_geom)

ggplot() +
  geom_sf(data = rs, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_pfundo, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR PONTA PORA

aldeias_ppora <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE PONTA PORA"))

plot(aldeias_ppora$the_geom)

ggplot() +
  geom_sf(data = ms, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_ppora, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR RORAIMA

aldeias_roraima <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE RORAIMA"))

plot(aldeias_roraima$the_geom)

ggplot() +
  geom_sf(data = roraima, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_roraima, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR TAPAJÓS

aldeias_tapajos <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DE TAPAJOS"))

plot(aldeias_tapajos$the_geom)

ggplot() +
  geom_sf(data = para, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_tapajos, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR ALTO SOLIMOES

aldeias_asolimoes <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO ALTO SOLIMOES"))

plot(aldeias_asolimoes$the_geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_asolimoes, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR BAIXO TOCANTINS

aldeias_btocantins <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO BAIXO TOCANTINS"))

plot(aldeias_btocantins$the_geom)

ggplot() +
  geom_sf(data = para, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_btocantins, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR JURUÁ

aldeias_jurua <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO JURUÁ"))

plot(aldeias_jurua$the_geom)

ggplot() +
  geom_sf(data = acre, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_jurua, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR MADEIRA

aldeias_madeira <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO MADEIRA"))

plot(aldeias_madeira$the_geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_madeira, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR RIO NEGRO

aldeias_rnegro <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO RIO NEGRO"))

plot(aldeias_rnegro$the_geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_rnegro, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR SUL DA BAHIA

aldeias_sbahia <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO SUL DA BAHIA"))

plot(aldeias_sbahia$the_geom)

ggplot() +
  geom_sf(data = bahia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_sbahia, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR VALE DO JAVARI

aldeias_vjavari <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO VALE DO JAVARI"))

plot(aldeias_sbahia$the_geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_vjavari, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR XINGU

aldeias_xingu <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL DO XINGU"))

plot(aldeias_xingu$the_geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_xingu, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR INTERIOR DO SUL

aldeias_isul <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL INTERIOR DO SUL"))

plot(aldeias_isul$the_geom)

ggplot() +
  geom_sf(data = parana, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = sc, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_isul, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR KAYAPÓ SUL DO PARÁ

aldeias_kspara <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL KAYAPÓ SUL DO PARÁ"))

plot(aldeias_kspara$the_geom)

ggplot() +
  geom_sf(data = para, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = maranhao, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_kspara, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR LITORAL SUDESTE

aldeias_lsudeste <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL LITORAL SUDESTE"))

plot(aldeias_lsudeste$the_geom)

ggplot() +
  geom_sf(data = sp, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = rj, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_lsudeste, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR LITORAL SUL

aldeias_lsul <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL LITORAL SUL"))

plot(aldeias_lsul$the_geom)

ggplot() +
  geom_sf(data = sc, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = rs, fill = "gray95", color = "gray50") +
  geom_sf(data = parana, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_lsul, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR MARANHÃO

aldeias_maranhao <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL MARANHÃO"))

plot(aldeias_maranhao$the_geom)

ggplot() +
  geom_sf(data = maranhao, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_maranhao, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR MÉDIO PURUS

aldeias_mpurus <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL MÉDIO PURUS"))

plot(aldeias_mpurus$the_geom)

ggplot() +
  geom_sf(data = amazonas, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_mpurus, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR NORDESTE 1

aldeias_nordeste1 <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL NORDESTE I"))

plot(aldeias_nordeste1$the_geom)

ggplot() +
  geom_sf(data = bahia, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = alagoas, fill = "gray95", color = "gray50") + 
  geom_sf(data = pernambuco, fill = "gray95", color = "gray50") + 
  geom_sf(data = sergipe, fill = "gray95", color = "gray50") + 
  geom_sf(data = aldeias_nordeste1, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR NORDESTE 2

aldeias_nordeste2 <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL NORDESTE II"))

plot(aldeias_nordeste2$the_geom)

ggplot() +
  geom_sf(data = ceara, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = maranhao, fill = "gray95", color = "gray50") + 
  geom_sf(data = rn, fill = "gray95", color = "gray50") + 
  geom_sf(data = paraiba, fill = "gray95", color = "gray50") + 
  geom_sf(data = piaui, fill = "gray95", color = "gray50") + 
  geom_sf(data = aldeias_nordeste2, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR NOROESTE DO MATO GROSSO

aldeias_nwmt <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL NOROESTE DO MATO GROSSO"))

plot(aldeias_nwmt$the_geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_nwmt, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR NORTE DO MATO GROSSO

aldeias_nmt <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL NORTE DO MATO GROSSO"))

plot(aldeias_nmt$the_geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = para, fill = "gray95", color = "gray50") +
  geom_sf(data = aldeias_nmt, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR RIBEIRAO CASCALHEIRA

aldeias_rcascalheira <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL RIBEIRAO CASCALHEIRA"))

plot(aldeias_rcascalheira$the_geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_rcascalheira, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

# CR XAVANTE

aldeias_xavante <- aldeias |> 
  filter(nome_cr %in% c("COORDENACAO REGIONAL XAVANTE"))

plot(aldeias_xavante$the_geom)

ggplot() +
  geom_sf(data = mt, fill = "gray95", color = "gray50") +  # mapa base com municípios
  geom_sf(data = aldeias_xavante, fill = "darkgreen", color = "black", alpha = 0.6) +  # sobreposição TIs
  theme_minimal()

