#' Title
#'
#' @param data
#' @param title
#' @param width
#' @param height
#' @param margin
#' @param elementId
#' @param xAccessor
#' @param xExtent
#' @param yAccessor
#' @param yExent
#'
#' @return
#' @export
XYFrame <- function(
  data = NULL,
  title = NULL,
  xAccessor = NULL,
  xExtent = NULL,
  yAccessor = NULL,
  yExtent = NULL,
  width = NULL,
  height = NULL,
  margin = NULL,
  elementId = NULL
) {
  props = list(
    title = title,
    margin = margin,
    xAccessor = xAccessor,
    xExtent = xExtent,
    yAccessor = yAccessor,
    yExtent = yExtent
  )

  remiotic(
    data = data,
    frame = "XYFrame",
    props = Filter(
      Negate(is.null),
      props
    ),
    width = width,
    height = height,
    elementId = elementId
  )
}
