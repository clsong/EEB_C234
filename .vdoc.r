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
#| warning: false
library(tidyverse)
library(tidylog)

# if you haven't installed dcldata, you can do so by running:
# pak::pkg_install("dcl-docs/dcldata")
library(dcldata)
#
#
#
#
#
#
#
example_eagle_nests
#
#
#
#
#
#| warning: false

eagle_nests_longer <- example_eagle_nests |>
    pivot_longer( #<1>
        cols = c(`2007`, `2009`), #<2>
        names_to = "year", #<3>
        values_to = "nests" #<4>
    )
eagle_nests_longer
```
#
#
#
#
#
#
#
#
#| warning: false
#| eval: false

example_eagle_nests |>
    pivot_longer(
        cols = -c(`region`), 
        names_to = "year", 
        values_to = "nests" 
    )
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
#
#
#
#
#
#
#
#| warning: false

eagle_nests_longer |>
    pivot_wider( #<1>
        names_from = "year", #<2>
        values_from = "nests" #<3>
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
#
#| warning: false

library(palmerpenguins)

penguins |>
   group_by(species, sex) |>
   summarise(mean_bill_length = mean(bill_length_mm)) 
#
#
#
#
#
#
#| warning: false

penguins |>
   group_by(species, sex) |>
   summarise(mean_bill_length = mean(bill_length_mm)) |>
   ungroup() |>
   pivot_wider(
      names_from = "sex",
      values_from = "mean_bill_length"
   )
#
#
#
#
#
#
#
#| warning: false

penguins |>
   group_by(species, sex) |>
   summarise(mean_bill_length = mean(bill_length_mm)) |>
   ungroup() |>
   pivot_wider(
      names_from = "sex",
      values_from = "mean_bill_length"
   ) |>
   ggplot(aes(male, female)) +
   geom_point(size = 4) +
   ggrepel::geom_text_repel(aes(label = species), box.padding = 1) +
   geom_abline(intercept = 0, slope = 1) +
   jtools::theme_nice()
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
example_gymnastics_2
#
#
#
#
#
#| warning: false

example_gymnastics_2 |>
    pivot_longer(
        cols = -c(`country`), 
        names_to = "event_year", 
        values_to = "score"
    )
#
#
#
#
#
#| warning: false

example_gymnastics_2 |>
    pivot_longer(
        cols = -c(`country`), 
        names_to = "event_year", 
        values_to = "score"
    ) |>
    separate(
        col = "event_year", 
        into = c("event", "year"), 
        sep = "_"
    )
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
toy_dates <- tibble(
  month = c(1, 2, 3),
  day   = c(15, 20, 25),
  year  = c(2020, 2020, 2020)
)
#
#
#
#
#
toy_dates |>
  unite( # <1>
    col = "full_date", # <2>
    month, day, year, # <3>
    sep = "-" # <4>
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
penguins
#
#
#
#
#
penguins |>
  drop_na() # <1>
```
#
#
#
#
#
penguins |>
  drop_na(bill_length_mm) # <1>
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
penguins |>
  replace_na(
   list(sex = 'male')
  )
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
library(palmerpenguins)

penguins |>
   group_by(species, sex) |>
   nest()
#
#
#
