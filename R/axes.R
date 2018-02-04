#' Title
#'
#' @param remwidget
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
rem_axes <- function(
  remwidget = NULL,
  ...
) {
  if(is.null(remwidget) && !inherits(remwidget,"remiotic")) {
    stop("please supply a remiotic htmlwidget to which we can add points.", call.=FALSE)
  }

  axes_props <- list(...)

  axes <- remwidget$x$props$axes
  if(is.null(axes)) axes <- list()

  axes[[length(axes) + 1]] <- axes_props

  remwidget$x$props$axes <- axes
  remwidget

}
