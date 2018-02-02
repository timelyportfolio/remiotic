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


remiotic(
  # lines expected to be an array of arrays
  #  for now do it the really ugly way
  data = list(
    list(
      group = "A",
      coordinates = lapply(0:10, function(x) list(x=x, y=runif(1)))
    )
  ),
  frame = "XYFrame",
  props = list(
    shape = "lines",
    xAccessor = "x",
    yAccessor = "y",
    xExtent = c(0, 10),
    yExtent = c(0, 1),
    lineStyle = list(stroke = "black"),
    margin = list(
      top = 20,
      right = 40,
      bottom = 50,
      left = 50
    ),
    axes = list(
      list(orient = "left"),
      list(orient = "bottom")
    )
  ),
  width = "100%"
)
