#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| message: false
#| warning: false
library(tidyverse)
library(colorspace)
library(palmerpenguins)

penguins |>
    ggplot(aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
    geom_point() +
    scale_fill_discrete_qualitative() +
    jtools::theme_nice()
#
#
#
#
#
#| eval: false
scale_<aesthetic>_<datatype>_<colorscale>()
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
