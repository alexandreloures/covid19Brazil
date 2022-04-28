rm (list = ls ()); gc ()

if (!require ('tidyverse')) {
  install.packages ('tidyverse')
  library (tidyveres)
}

if (!require ('magrittr')) {
  install.packages ('magrittr')
  library (magrittr)
}

setwd ('D:/OneDrive/academic/Packages R/covid19Brazil/covid19Brazil/csv/HIST_PAINEL_COVIDBR_26abr2022')

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




setwd ('D:/OneDrive/academic/Packages R/covid19Brazil/covid19Brazil/csv')




# ---- Brazil total ----

brazil_total <- covid2019 %>% subset (region == 'Brasil')

brazil_total %<>% select (-c (state, municipality, coduf, codmun)
                          )

write_csv (brazil_total, 'brazil_total.csv')

rm (brazil_total); gc ()




# ---- State total ----

covid2019 %<>% mutate (codmun = ifelse (!is.na (codmun), codmun, 0
                                        )
                       )

state_total <- covid2019 %>% subset (state != 'NA' &
                                       codmun == 0
                                     )

state_total %<>% select (-c (municipality, codmun)
                         )

write_csv (state_total, 'state_total.csv')

rm (state_total); gc ()




# ---- Brazil city ----

brazil_city <- covid2019 %>% subset (municipality != 'NA'
                                     )

write_csv (brazil_city, 'brazil_city.csv')

rm (brazil_city); gc ()




# ---- Region total ----

region_total <- state_total %>% group_by (region & date) %>%
  summary (accumCases = sum (accumCases)
           )
