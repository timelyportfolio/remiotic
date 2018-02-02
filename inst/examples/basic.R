library(remiotic)
library(htmltools)

rg <- remiotic(
  data = mtcars,
  props = list(
    title = "mtcars from R with Semiotic",
    shape = "points",
    xAccessor = "mpg",
    xExtent = range(mtcars$mpg),
    yAccessor = "hp",
    yExent = range(mtcars$hp),
    pointStyle = list(
      fill = "red",
      stroke = "blue",
      strokeWidth = 5,
      opacity = 0.5
    ),
    axes = list(
      list(orient = "left", label = "Miles per Gallon (mpg)"),
      list(orient = "bottom", label = "Horsepower (hp)")
    ),
    margin = list(
      top = 40,
      right = 20,
      bottom = 60,
      left = 70
    ),
    annotations = list(
      list(type = "x", label = "mpg > 21 is good", mpg = 21, color = "red", dy = 50)
    )
  ),
  width = "100%",
  height = 400
)

rg

htmlwidgets::prependContent(
  rg,
  tags$style("text.frame-title {font-size: 2em;}")
)
