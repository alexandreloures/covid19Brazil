#' Update the Package Datasets
#' @export
#' @description Checks if new data is available on the package dev version (Github).
#' In case new data is available the function will enable the user the update the datasets
#'
#' @example
#' \dontrun{
#'
#' update_data()
#'
#' }
update_data <- function() {
  flag <- FALSE

  total_current <- covid19brazil::brazil_total
  region_current <- covid19brazil::brazil_region
  state_current <- covid19brazil::brazil_state
  municipality_current <- covid19brazil::brazil_municipality

  total_git <- as_tibble (readr::read_csv ('https://media.githubusercontent.com/media/alexandreloures/covid19Brazil/main/csv/brazil_total.csv'
                                           , locale = readr::locale(encoding = "ASCII")))


  region_git <- as_tibble (readr::read_csv ('https://media.githubusercontent.com/media/alexandreloures/covid19Brazil/main/csv/brazil_region.csv'
                                            , locale = readr::locale(encoding = "ASCII")))


  state_git <- as_tibble (readr::read_csv ('https://media.githubusercontent.com/media/alexandreloures/covid19Brazil/main/csv/brazil_state.csv'
                                           , locale = readr::locale(encoding = "ASCII")))


  municipality_git <- as_tibble (readr::read_csv ('https://media.githubusercontent.com/media/alexandreloures/covid19Brazil/main/csv/brazil_municipality.csv'
                                                  , locale = readr::locale (encoding = 'ASCII')))

  if (!base::identical (dim (total_git), dim (total_current))) {
    if (base::nrow (total_git) > base::nrow (total_current)) {
      flag <- TRUE
    }
  }

  if (!base::identical (dim(region_git), dim (region_current))) {
    if (base::nrow (region_git) > base::nrow (region_current)) {
      flag <- TRUE
    }
  }

  if (!base::identical (dim (state_git), dim (state_current))) {
    if (base::nrow (state_git) > base::nrow (state_current)) {
      flag <- TRUE
    }
  }

  if (!base::identical (dim(municipality_git), dim (municipality_current))) {
    if (base::nrow (municipality_git) > base::nrow (municipality_current)) {
      flag <- TRUE
    }
  }

  if (flag) {
    q <- base::tolower (base::readline ('Updates are available on the covid19brazil Dev version, do you want to update? n/Y'))

    if (q == 'y' | q == 'yes' | q == 'Y' | q == 'Yes') {

      base::tryCatch (
        expr = {
      devtools::install_github ('alexandreloures/covid19Brazil')

          base::message ('The data was refresed, please restart your session to have the new data available')
        },
      error = function (e) {
        message('Caught an error!')
        print (e)
      },
      warning = function (w) {
        message('Caught an warning!')
        print (w)
      }

      )
    }
  } else {
    base::message ('No updates are available')
  }


}
