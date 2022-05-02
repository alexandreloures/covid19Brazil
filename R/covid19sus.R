rm (list = ls ()); gc ()

pkgs = installed.packages ()

if (!('tidyverse' %in% pkgs)) install.packages ('tidyverse')
if (!('magrittr' %in% pkgs)) install.packages ('magrittr')
if (!('geobr' %in% pkgs)) install.packages ('geobr')

library (tidyverse)
library (magrittr)
library (geobr)

setwd ('C:/Users/alexa/Desktop/HIST_PAINEL_COVIDBR_26abr2022')

covid1.2020 <- read_csv2 ('HIST_PAINEL_COVIDBR_2020_Parte1_26abr2022.csv'
                          , col_types = cols_only (regiao = col_character ()
                                                   , estado = col_character ()
                                                   , municipio = col_character ()
                                                   , coduf = col_integer ()
                                                   , codmun = col_integer ()
                                                   , data = col_date ()
                                                   , semanaEpi = col_integer ()
                                                   , populacaoTCU2019 = col_integer ()
                                                   , casosAcumulado = col_integer ()
                                                   , casosNovos = col_integer ()
                                                   , obitosAcumulado = col_integer ()
                                                   , obitosNovos = col_integer ()
                                                   , Recuperadosnovos = col_integer ()
                                                   , emAcompanhamentoNovos = col_integer()
                                                   )
                          )
covid2.2020 <- read_csv2 ('HIST_PAINEL_COVIDBR_2020_Parte2_26abr2022.csv'
                          , col_types = cols_only (regiao = col_character ()
                                                   , estado = col_character ()
                                                   , municipio = col_character ()
                                                   , coduf = col_integer ()
                                                   , codmun = col_integer ()
                                                   , data = col_date ()
                                                   , semanaEpi = col_integer ()
                                                   , populacaoTCU2019 = col_integer ()
                                                   , casosAcumulado = col_integer ()
                                                   , casosNovos = col_integer ()
                                                   , obitosAcumulado = col_integer ()
                                                   , obitosNovos = col_integer ()
                                                   , Recuperadosnovos = col_integer ()
                                                   , emAcompanhamentoNovos = col_integer()
                                                   )
                          )
covid1.2021 <- read_csv2 ('HIST_PAINEL_COVIDBR_2021_Parte1_26abr2022.csv'
                          , col_types = cols_only (regiao = col_character ()
                                                   , estado = col_character ()
                                                   , municipio = col_character ()
                                                   , coduf = col_integer ()
                                                   , codmun = col_integer ()
                                                   , data = col_date ()
                                                   , semanaEpi = col_integer ()
                                                   , populacaoTCU2019 = col_integer ()
                                                   , casosAcumulado = col_integer ()
                                                   , casosNovos = col_integer ()
                                                   , obitosAcumulado = col_integer ()
                                                   , obitosNovos = col_integer ()
                                                   , Recuperadosnovos = col_integer ()
                                                   , emAcompanhamentoNovos = col_integer()
                                                   )
                          )
covid2.2021 <- read_csv2 ('HIST_PAINEL_COVIDBR_2021_Parte2_26abr2022.csv'
                          , col_types = cols_only (regiao = col_character ()
                                                   , estado = col_character ()
                                                   , municipio = col_character ()
                                                   , coduf = col_integer ()
                                                   , codmun = col_integer ()
                                                   , data = col_date ()
                                                   , semanaEpi = col_integer ()
                                                   , populacaoTCU2019 = col_integer ()
                                                   , casosAcumulado = col_integer ()
                                                   , casosNovos = col_integer ()
                                                   , obitosAcumulado = col_integer ()
                                                   , obitosNovos = col_integer ()
                                                   , Recuperadosnovos = col_integer ()
                                                   , emAcompanhamentoNovos = col_integer()
                                                   )
                          )
covid1.2022 <- read_csv2 ('HIST_PAINEL_COVIDBR_2022_Parte1_26abr2022.csv'
                          , col_types = cols_only (regiao = col_character ()
                                                   , estado = col_character ()
                                                   , municipio = col_character ()
                                                   , coduf = col_integer ()
                                                   , codmun = col_integer ()
                                                   , data = col_date ()
                                                   , semanaEpi = col_integer ()
                                                   , populacaoTCU2019 = col_integer ()
                                                   , casosAcumulado = col_integer ()
                                                   , casosNovos = col_integer ()
                                                   , obitosAcumulado = col_integer ()
                                                   , obitosNovos = col_integer ()
                                                   , Recuperadosnovos = col_integer ()
                                                   , emAcompanhamentoNovos = col_integer()
                                                   )
                          )




covid2019 <- rbind (covid1.2020, covid2.2020
                    , covid1.2021, covid2.2021
                    , covid1.2022
                    )

rm (covid1.2020, covid2.2020
    , covid1.2021, covid2.2021
    , covid1.2022
    ); gc ()




covid2019 %<>% rename (region = regiao
                       , state = estado
                       , municipality = municipio
                       , date = data
                       , epidWeek = semanaEpi
                       , population = populacaoTCU2019
                       , accumCases = casosAcumulado
                       , newCases = casosNovos
                       , accumDeaths = obitosAcumulado
                       , newDeaths = obitosNovos
                       , newRecov = Recuperadosnovos
                       , followUp = emAcompanhamentoNovos
                       ); gc ()




# ---- IBGE shapes files ----

region <- read_region (year = 2020); gc ()
region %<>% select (-c (code_region
                        )
                    ); gc ()
region %<>% rename (region = name_region)




state <- read_state (code_state = 'all', year = 2020); gc ()
state %<>% select (-c (abbrev_state, name_state, code_region
                       , name_region
                       )
                   ); gc ()
state %<>% rename (coduf = code_state)




municipality <- read_municipality (code_muni = 'all', year = 2020); gc ()
municipality %<>% select (- c(name_muni, code_state, abbrev_state
                              , name_state, code_region, name_region
                              )
                          ); gc ()
municipality %<>% rename (codmun = code_muni)




setwd ('D:/OneDrive/academic/PackagesR/covid19Brazil/covid19Brazil/csv')




# ---- Brazil total ----

brazil_total <- covid2019 %>% subset (region == 'Brasil'); gc ()

brazil_total %<>% select (-c (state, municipality, coduf, codmun)
                          ); gc ()

write_csv (brazil_total, 'brazil_total.csv')

rm (brazil_total); gc ()




# ---- State total ----

covid2019 %<>% mutate (codmun = ifelse (!is.na (codmun), codmun, 0
                                        )
                       )

state_total <- covid2019 %>% subset (state != 'NA' &
                                       codmun == 0
                                     ); gc ()

state_total %<>% select (-c (municipality, codmun)
                         ); gc ()

# state_total %<>% full_join (state, by = 'coduf')

write_csv (state_total, 'state_total.csv')

# rm (state_total); gc ()




# ---- Brazil municipality ----

brazil_municipality <- covid2019 %>% subset (municipality != 'NA'
                                     ); gc ()

# brazil_municipality %<>% full_join (municipality, by = 'codmun')

write_csv (brazil_municipality, 'brazil_municipality.csv')

rm (brazil_municipality); gc ()




# ---- Region total ----

region_total <- state_total %>% group_by (region, date) %>%
  summarise (population = sum (population)
             , accumCases = sum (accumCases)
             , newCases = sum (newCases)
             , accumDeaths = sum (accumDeaths)
             , newDeaths = sum (newDeaths)
             , newRecov = sum (newRecov)
             , followUp = sum (followUp)
             )

# region_total %<>% full_join (region, by = 'region')

write_csv (region_total, 'region_total.csv')

rm (state_total, region_total); gc ()
