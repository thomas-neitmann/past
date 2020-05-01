past
================

> Revive the Past with `stringsAsFactors = TRUE`

Overview
--------

In `R` version 4.0.0 the `stringsAsFactors` default was changed to `FALSE`. If your code depended on the old default you will run into trouble when upgrading your R version. You might think you can use `options(stringsAsFactors = TRUE)` but that will throw a nasty warning and it will be deprecated in the future.

``` r
options(stringsAsFactors = TRUE)
```

    ## Warning in options(stringsAsFactors = TRUE): 'options(stringsAsFactors = TRUE)'
    ## is deprecated and will be disabled

That leaves you with two solutions: you either have to set the `stringsAsFactor` argument explicitly for every function call or you add `library(past)` at the top of your program. Presumably, the latter is an easier and less time consuming option.

Installation
------------

The package is currently only available from GitHub. You can install it by copy-pasting the following commands into your `R` console.

``` r
if (!"remotes" %in% installed.packages()) {
  install.packages("remotes")
}
remotes::install_github("thomas-neitmann/past")
```

Examples
--------

``` r
file <- tempfile()
write.csv(iris, file, row.names = FALSE)
iris2 <- read.csv(file)
is.factor(iris2$Species)
```

    ## [1] FALSE

After calling `library(past)` unless you explicitly specify `stringsAsFactors = FALSE` it will default to `TRUE`.

``` r
library(past)
```

    ## 
    ## Attaching package: 'past'

    ## The following objects are masked from 'package:utils':
    ## 
    ##     read.csv, read.csv2, read.delim, read.delim2, read.table

    ## The following objects are masked from 'package:base':
    ## 
    ##     as.data.frame, data.frame

``` r
iris3 <- read.csv(file)
is.factor(iris3$Species)
```

    ## [1] TRUE
