
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid19brazil

<!-- badges: start -->

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/covid19brazil)](https://cran.r-project.org/package=covid19brazil)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![License:
Mit](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Github
commit](https://img.shields.io/github/last-commit/AlexandreLoures/covid19brazil)](https://github.com/AlexandreLoures/covid19Brazil/commit)
[![Git all
releases](https://img.shields.io/github/downloads/AlexandreLoures/covid19brazil/total.svg)](https://cran.r-project.org/web/packages/covid19brazil/index.html)
<!-- badges: end -->

The `covid19brazil` R package has daily information on the number of
accumulated cases and accumulated deaths for the COVID-19 pandemic in
Brazil. The information available in the package is organized as
follows:

-   `brazil_total` - Dataset with information about the new Coronavirus
    (COVID-19) for Brazil as a whole
-   `brazil_region` - Dataset with information on the new Coronavirus
    (COVID-19) for the five regions of Brazil
-   `brazil_state` - Information on the new Coronavirus (COVID-19) for
    the twenty-seven Federative Units of Brazil
-   `brazil_municipality` - Information on the new Coronavirus
    (COVID-19) for the 5,570 municipalities in Brazil

The graph below shows the number of cases accumulated in each Federative
Unit of Brazil per 100,000 inhabitants (data for the day 2022-06-24).

Data source: [Ministerio da Saude - Sistema Unico de Saude
(SUS)](https://www.gov.br/saude/pt-br)

<img src="figures/mapStates.png" width="100%" />

# Installation

To install the `package`, one of the two standard methods for installing
`packages`in R can be adopted. Directly through the
[cran](https://cran.r-project.org/package=covid19brazil) (choosing the
closest repository):

``` r
install.packages ("covid19brazil")
```

Or even using the command below. In the latter case, the latest version
of the `package`will be installed.

``` r
# install.packages ("devtools")
devtools::install_github ("AlexandreLoures/covid19brazil")
```

# Using the package

``` r
data ("brazil_total")

head (brazil_total)
#   region       date epidWeek population accumCases newCases accumDeaths
# 1 Brasil 2020-02-25        9  210147125          0        0           0
# 2 Brasil 2020-02-26        9  210147125          1        1           0
# 3 Brasil 2020-02-27        9  210147125          1        0           0
# 4 Brasil 2020-02-28        9  210147125          1        0           0
# 5 Brasil 2020-02-29        9  210147125          2        1           0
# 6 Brasil 2020-03-01       10  210147125          2        0           0
#   newDeaths newRecov followUp
# 1         0        0        0
# 2         0        1        0
# 3         0        1        0
# 4         0        0        1
# 5         0        1        1
# 6         0        1        1
```

# Analyzing the dataset
