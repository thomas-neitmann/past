#' Data Input
#'
#' Drop in replacements for the `utils::read_*()` functions with `stringsAsFactos = TRUE`
#' by default.
#'
#' @param ... Arguments passed on the the respective function in [`utils`]
#'
#' @details
#' In R version 4.0.0 the `stringsAsFactors` default was changed to `FALSE`. In
#' addition, using `options(stringsAsFactors = TRUE)` now throws a nasty warning.
#' If your code depended on the old `stringsAsFactors = TRUE` default and you
#' want to upgrade your R version then you either have to set the argument explicitly
#' for every function call or you add `library(past)` at the top of your program.
#' Presumably, the latter is an easier and less time consuming option.
#'
#' @author Thomas Neitmann
#'
#' @examples
#' file <- tempfile()
#' write.csv(iris, file = file, row.names = FALSE)
#' iris2 <- read.csv(file)
#' is.factor(iris2$Species)
#'
#' @export
read.table <- function(...) {
  if (hasStringsAsFactors(...)) {
    utils::read.table(...)
  } else {
    utils::read.table(..., stringsAsFactors = TRUE)
  }
}

#' @rdname read.table
#' @export
read.csv <- function(...) {
  if (hasStringsAsFactors(...)) {
    utils::read.csv(...)
  } else {
    utils::read.csv(..., stringsAsFactors = TRUE)
  }
}

#' @rdname read.table
#' @export
read.csv2 <- function(...) {
  if (hasStringsAsFactors(...)) {
    utils::read.csv2(...)
  } else {
    utils::read.csv2(..., stringsAsFactors = TRUE)
  }
}

#' @rdname read.table
#' @export
read.delim <- function(...) {
  if (hasStringsAsFactors(...)) {
    utils::read.delim(...)
  } else {
    utils::read.delim(..., stringsAsFactors = TRUE)
  }
}

#' @rdname read.table
#' @export
read.delim2 <- function(...) {
  if (hasStringsAsFactors(...)) {
    utils::read.delim2(...)
  } else {
    utils::read.delim2(..., stringsAsFactors = TRUE)
  }
}
