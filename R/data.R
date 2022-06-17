#' The dataset with information about the new Coronavirus (COVID-19) for Brazil
#'
#' @description  Daily information about the new Coronavirus (COVID-19) pandemic in Brazil
#'
#'
#' @format A data.frame object
#' @source Ministerio da Saude - Sistema Unico de Saude (SUS) \href{https://www.saude.gov.br/}{website}
#' @keywords datasets coronavirus COVID-19 Brazil sars-cov-2
#' @details The dataset contains the daily summary of the Coronavirus pandemic cases in Brazil. The data includes the following fields:
#'
#' - region - indicates the country of coverage
#'
#' - date - date of notification
#'
#' - epidWeek - epidemiological week
#'
#' - population - population size
#'
#' - accumCases - number of cases accumulated
#'
#' - newCases - number of new cases reported
#'
#' - accumDeaths - number of accumulated deaths
#'
#' - newDeaths - new deaths reported
#'
#' - newRecov - indicates the number of new recovered patients
#'
#' - followUp - indicates the number of new cases being followed up
#'
#' @examples
#'
#' data (brazil_total)
#'
#' head (brazil_total)
#'

"brazil_total"


#' The dataset with information on the new Coronavirus (COVID-19) for the five regions of Brazil
#'
#' @description  Daily information about the new Coronavirus (COVID-19) pandemic in Brazil's regions
#'
#'
#' @format A data.frame object
#' @source Ministerio da Saude - Sistema Unico de Saude (SUS) \href{https://www.saude.gov.br/}{website}
#' @keywords datasets coronavirus COVID-19 Brazil sars-cov-2
#' @details The dataset contains the daily summary of the Coronavirus pandemic cases in Brazil's regions. The data includes the following fields:
#'
#' - region - indicates the regions coverage (Centro-Oeste, Nordeste, Norte, Sudeste, Sul)
#'
#' - date - date of notification
#'
#' - epidWeek - epidemiological week
#'
#' - population - population size
#'
#' - accumCases - number of cases accumulated
#'
#' - newCases - number of new cases reported
#'
#' - accumDeaths - number of accumulated deaths
#'
#' - newDeaths - new deaths reported
#'
#' @examples
#'
#' data (brazil_region)
#'
#' head (brazil_region)
#'

"brazil_region"


#' The dataset with information on the new Coronavirus (COVID-19) for the twenty-seven states of Brazil
#'
#' @description  Daily information about the new Coronavirus (COVID-19) pandemic in Brazil's states
#'
#'
#' @format A data.frame object
#' @source Ministerio da Saude - Sistema Unico de Saude (SUS) \href{https://www.saude.gov.br/}{website}
#' @keywords datasets coronavirus COVID19 Italy
#' @details The dataset contains the daily summary of the Coronavirus pandemic cases in Brazil's states. The data includes the following fields:
#'
#' - region - indicates to which region the state belongs
#'
#' - state - acronym (abbreviation) for state name
#'
#' - coduf - number that identifies the state
#'
#' - date - date of notification
#'
#' - epidWeek - epidemiological week
#'
#' - population - population size
#'
#' - accumCases - number of cases accumulated
#'
#' - newCases - number of new cases reported
#'
#' - accumDeaths - number of accumulated deaths
#'
#' - newDeaths - new deaths reported
#'
#' @examples
#'
#' data (brazil_state)
#'
#' head (brazil_state)
#'

"brazil_state"


#' The dataset with information on the new Coronavirus (COVID-19) for the 5,570 municipalities in Brasil
#'
#' @description  Daily information about the new Coronavirus (COVID-19) pandemic cases in Brazil's municipalities
#'
#'
#' @format A data.frame object
#' @source Ministerio da Saude - Sistema Unico de Saude (SUS) \href{https://www.saude.gov.br/}{website}
#' @keywords datasets coronavirus COVID19 Italy
#' @details The dataset contains the daily summary of the Coronavirus pandemic cases in Brazil's municipalities. The data includes the following fields:
#'
#' - region - indicates to which region the municipality belongs
#'
#' - state - indicates to which state the municipality belongs
#'
#' - municipality - municipality name
#'
#' - coduf - number that identifies the state
#'
#' - codmun - number that identifies the municipality
#'
#' - date - date of notification
#'
#' - epidWeek - epidemiological week
#'
#' - population - population size
#'
#' - accumCases - number of cases accumulated
#'
#' - newCases - number of new cases reported
#'
#' - accumDeaths - number of accumulated deaths
#'
#' - newDeaths - new deaths reported
#'
#' @examples
#'
#' data (brazil_municipality)
#'
#' head (brazil_municipality)
#'

"brazil_municipality"
