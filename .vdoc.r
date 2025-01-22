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
#| warning: false
#| message: false
library(tidyverse)
pacman::p_load(datasauRus)

datasaurus_dozen |>
    ggplot(aes(x = x, y = y, colour = dataset)) +
    geom_point() +
    theme_minimal() +
    facet_wrap(vars(dataset)) +
    labs(color = "Dataset")
#
#
#
#
#
