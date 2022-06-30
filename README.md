
<!-- README.md is generated from README.Rmd. Please edit that fiel -->

# covid19brazil

<!--badges: start -->

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/covid19brazil)](https://cran.r-project.org/package=covid19brazil)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![License:
Mit](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Github
commit](https://img.shields.io/github/last-commit/AlexandreLoures/covid19brazil)](https://github.com/AlexandreLoures/covid19Brazil/commit)
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
    the twenty-seven federative units of Brazil
-   `brazil_municipality` - Information on the new Coronavirus
    (COVID-19) for the 5,570 municipalities in Brazil

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
