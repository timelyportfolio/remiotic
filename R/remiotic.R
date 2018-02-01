#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
remiotic <- function(
  frame = "XYFrame",
  props = NULL,
  width = NULL, height = NULL,
  elementId = NULL
) {

  # forward options using x
  x = list(
    frame = frame,
    props = props
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'remiotic',
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

#' Shiny bindings for remiotic
#'
#' Output and render functions for using remiotic within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a remiotic
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name remiotic-shiny
#'
#' @export
remioticOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'remiotic', width, height, package = 'remiotic')
}

#' @rdname remiotic-shiny
#' @export
renderRemiotic <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, remioticOutput, env, quoted = TRUE)
}
