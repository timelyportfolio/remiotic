#' Dependencies for g2, bizcharts, and data-set
#'
#' @return \code{htmltools::htmlDependency}
#' @name dependencies
NULL

#' @rdname dependencies
#' @export
dep_corejs <- function() {
  #shim/polyfill for ES5 and ES6 so react will show up in RStudio Viewer
  #https://unpkg.com/core-js@2.5.3/
  htmltools::htmlDependency(
    name = "core-js",
    version = "2.5.3",
    src = c(file=system.file("www/core-js/dist", package="remiotic")),
    script = "shim.min.js"
  )
}

#' @rdname dependencies
#' @export
dep_semiotic <- function() {
  htmltools::htmlDependency(
    name = "semiotic",
    version = "1.9.11",
    src = c(file=system.file("www/semiotic/dist", package="remiotic")),
    script = "semiotic.min.js"
  )
}
