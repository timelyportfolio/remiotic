#' Title
#'
#' @param remwidget
#' @param pointStyle
#'
#' @return
#' @export
#'
#' @examples
rem_points <- function(
  remwidget = NULL,
  pointStyle = NULL,
  pointClass = NULL
) {
  if(is.null(remwidget) && !inherits(remwidget,"remiotic")) {
    stop("please supply a remiotic htmlwidget to which we can add points.", call.=FALSE)
  }

  props <- remwidget$x$props
  if(!is.null(pointStyle)) {
    props$pointStyle = pointStyle
  }

  if(!is.null(pointClass)) {
    props$pointClass = pointClass
  }

  if(!("points" %in% props$shape )) {
    props$shape <- c(props$shape, "points")
  }

  remwidget$x$props <- props
  remwidget
}


#' Title
#'
#' @param remwidget
#' @param group
#' @param lineDataAccessor
#' @param lineType
#' @param lineStyle
#' @param lineClass
#' @param lineIDAccessor
#'
#' @return
#' @export
#'
#' @examples
rem_lines <- function(
  remwidget = NULL,
  lineDataAccessor = NULL,
  lineType = NULL,
  lineStyle = NULL,
  lineClass = NULL,
  lineIDAccessor = NULL
) {
  if(is.null(remwidget) && !inherits(remwidget,"remiotic")) {
    stop("please supply a remiotic htmlwidget to which we can add points.", call.=FALSE)
  }

  props <- remwidget$x$props

  props <- modifyList(
    props,
    Filter(
      Negate(is.null),
      list(
        lines = linesdata,
        lineDataAccessor = lineDataAccessor,
        lineType = lineType,
        lineStyle = lineStyle,
        lineClass = lineClass,
        lineIDAccessor = lineIDAccessor
      )
    )
  )

  remwidget$x$props <- props
  remwidget
}
