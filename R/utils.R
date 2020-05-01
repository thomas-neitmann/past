hasStringsAsFactors <- function(...) {
  ellipsis <- list(...)
  "stringsAsFactors" %in% names(ellipsis)
}
