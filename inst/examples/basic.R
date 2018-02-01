library(remiotic)

remiotic(
  props = list(
    data = mtcars,
    xAccessor = "mpg",
    yAccessor = "hp",
    pointStyle = list(
      fill = "red",
      stroke = "blue",
      strokeWidth = 5
    )
  )
)
