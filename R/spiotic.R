#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
spiotic <- function(
  data = NULL,
  frame = "SparkXYFrame",
  props = NULL,
  width = 60, height = 20,
  elementId = NULL
) {

  # forward options using x
  x = list(
    data = data,
    frame = frame,
    props = props
  )


  # create widget
  htmlwidgets::createWidget(
    name = 'spiotic',
    x,
    width = width,
    height = height,
    package = 'remiotic',
    dependencies = list(
      dep_corejs(),
      reactR::html_dependency_react(),
      dep_semiotic()
    ),
    elementId = elementId
  )
}

#' @import htmltools
#' @keywords internal
spiotic_html <- function(id, style, class, ...){
  tags$span(
    id = id, class = class, style = style#, style="add other here"
  )
}
