library(remiotic)
library(magrittr)

XYFrame(
  data = iris,
  xAccessor = "Petal.Length",
  xExtent = c(0, max(iris$Petal.Length)),
  yAccessor = "Petal.Width",
  yExtent = c(0, max(iris$Petal.Width)),
  title = "Semiotic Using Frames API",
  margin = list(top = 60, right = 20, bottom = 40, left = 50)
) %>%
  rem_points() %>%
  rem_axes(orient = "bottom") %>%
  rem_axes(orient = "left")
