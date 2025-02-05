#
#
#
#
#
#
#| warning: false
#| message: false
library(tidyverse)
library(tidylog)
library(palmerpenguins)
theme_set(cowplot::theme_cowplot())
#
#
#
#
#
#
#
#
#
penguins |>
    ggplot(aes(x = bill_length_mm, y = bill_depth_mm)) +
    geom_point() +
    geom_rug()
#
#
#
#
#
#
#
#
library(ggside)

penguins |>
    ggplot(aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
    geom_point() +
    geom_xsidedensity(aes(y = after_stat(density))) + # <1>
    geom_ysidedensity(aes(x = after_stat(density))) + # <2>
    theme(
        ggside.axis.text = element_blank() # <3>
    )
```
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
data(lending_club, package = "modeldata")

lending_club_log10 <- lending_club |>
    mutate(annual_inc = log10(annual_inc)) |>
    mutate(total_il_high_credit_limit = log10(total_il_high_credit_limit)) |>
    filter(is.finite(annual_inc), is.finite(total_il_high_credit_limit))

lending_club_log10 |>
    ggplot(aes(x = annual_inc, y = total_il_high_credit_limit)) +
    geom_point()
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
lending_club_log10 |>
    ggplot(aes(x = annual_inc, y = total_il_high_credit_limit)) +
    geom_point(alpha = 0.05) # <1>
```
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
lending_club_log10 |>
    ggplot(aes(x = annual_inc, y = total_il_high_credit_limit)) +
    ggdensity::geom_hdr() # <1>
```
#
#
#
#
#
#| warning: false
lending_club_log10 |>
    ggplot(aes(x = annual_inc, y = total_il_high_credit_limit)) +
    ggdensity::geom_hdr_lines() + # <1>
    geom_point(pch='.', color = 'black', size = 0.5, alpha = 0.05) # <2>
```
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
lending_club_log10 |>
    ggplot(aes(x = annual_inc, y = total_il_high_credit_limit)) +
    ggpointdensity::geom_pointdensity() +
    scale_color_viridis_c() # <1>
```
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
data(ex0826, package = "Sleuth3")

ex0826 |>
    ggplot(aes(x = Mass, y = Metab)) +
    geom_point() +
    scale_x_log10( 
        breaks = scales::trans_breaks("log10", function(x) 10^x),
        labels = scales::trans_format("log10", scales::math_format(10^.x))
    ) +
    scale_y_log10(
        breaks = scales::trans_breaks("log10", function(x) 10^x),
        labels = scales::trans_format("log10", scales::math_format(10^.x))
    ) +
    annotation_logticks() +
    geom_smooth(method = "lm") +
    ggpmisc::stat_quant_eq()
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
penguins_small <- penguins |>
    select(species, bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g) |>
    drop_na()
#
#
#
#
#
#
#
#| message: false
#| warning: false
penguins_small |>
    GGally::ggpairs()
#
#
#
#
#
#
#
library(ggpca)
penguins_small |>
    ggpca(
        metadata_cols = "species",  # <1>
        mode = "pca",               # <2>
        color_var = "species",      # <3>
        ellipse = TRUE              # <4>
    )
```
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
