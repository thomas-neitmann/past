#' Data Frames
#'
#' Drop in replacements for [`base::data.frame()`] with `stringsAsFactos = TRUE`
#' by default.
#'
#' @param ... Arguments passed on to [`base::data.frame()`]
#'
#' @details
#' In R version 4.0.0 the `stringsAsFactors` default was changed to `FALSE`. In
#' addition, using `options(stringsAsFactors = TRUE)` now throws a nasty warning.
#' If your code depended on the old `stringsAsFactors = TRUE` default you
#' want to upgrade your R version then you either have to set the argument explicitly
#' for every function call or you add `library(past)` at the top of your program.
#' Presumably, the latter is an easier and less time consuming option.
#'
#' @author Thomas Neitmann
#'
#' @examples
#' df <- data.frame(char = letters, num = 1:26)
#' is.factor(df$char)
#'
#' @export
data.frame <- function(...) {
  if (hasStringsAsFactors(...)) {
    base::data.frame(...)
  } else {
    base::data.frame(..., stringsAsFactors = TRUE)
  }
}

#' Coerce to a Data Frame
#'
#' Drop in replacements for [`base::as.data.frame()`] with `stringsAsFactos = TRUE`
#' by default.
#'
#' @param ... Arguments passed on to [`base::as.data.frame()`]
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
#' df <- as.data.frame(letters)
#' is.factor(df$letters)
#'
#' @export
as.data.frame <- function(...) {
  if (hasStringsAsFactors(...)) {
    base::as.data.frame(...)
  } else {
    base::as.data.frame(..., stringsAsFactors = TRUE)
  }
}
