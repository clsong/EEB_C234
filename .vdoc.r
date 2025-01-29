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
#
#
#| warning: false
#| eval: false

example_eagle_nests |>
    pivot_longer(
        cols = -c(region), 
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
library(tidyverse)

billboard |>
   pivot_longer(
      cols = -c(______),
      names_to = _____,
      values_to = "rank"
   ) 
#
#
#
#
library(tidyverse)

billboard |>
   pivot_longer(
      cols = -c(artist, track, date.entered),
      names_to = "week",
      values_to = "rank"
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
library(tidyverse)

us_rent_income |>
   select(-moe) |>
   pivot_wider(
      names_from = ____,
      values_from = ____
   ) |>
   mutate(rent_income_ratio = rent * 12 / income) |>
   arrange(______)
#
#
#
#
library(tidyverse)

us_rent_income |>
   select(-moe) |>
   pivot_wider(
      names_from = "variable",
      values_from = "estimate"
   ) |>
   mutate(rent_income_ratio = rent * 12 / income) |>
   arrange(rent_income_ratio)
```   
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
        names_to = "eventandyear", 
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
        names_to = "eventandyear", 
        values_to = "score"
    ) |>
    separate(
        col = "eventandyear", 
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
library(tidyverse)

who2 |>
   pivot_longer(
      cols = -c(______), 
      names_to = "diagnosis_gender_age", 
      values_to = "count"
   ) |>
   separate(
      col = "diagnosis_gender_age",
      into = c(______),
      sep = ______
   )
#
#
#
#
#
library(tidyverse)

who2 |>
   pivot_longer(
      cols = -c(country, year), 
      names_to = "diagnosis_gender_age", 
      values_to = "count"
   ) |>
   separate(
      col = "diagnosis_gender_age",
      into = c("diagnosis", "gender", "age"),
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
   list(sex = 'male') # <1>
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
library(tidyverse)
# pak::pkg_install("datasauRus")
library(datasauRus)

datasaurus_dozen_wide # <1>
```
#
#
#
#
#
#
datasaurus_dozen_long <- datasaurus_dozen_wide |>
  janitor::clean_names() |>  # <1> 
  mutate(row = row_number()) |>  # <2> 
  pivot_longer(
    cols = -"row",  # <3> 
    names_to = "variable",  # <4> 
    values_to = "value"  # <5> 
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
datasaurus <- datasaurus_dozen_long |>
  separate(
    variable, 
    into = c("dataset", "coord"),
    sep = "_(?=[^_]*$)" # <1> 
  ) |>
  pivot_wider( # <2>
    names_from = "coord", 
    values_from = "value"
  )

datasaurus
```
#
#
#
#
#
#
# Calculate summary statistics for each dataset
datasaurus |>
  group_by(dataset) |>
  summarise(
    mean_x = mean(x),
    mean_y = mean(y),
    sd_x = sd(x),
    sd_y = sd(y),
    cor = cor(x, y)
  )
#
#
#
#
#
# Create faceted scatter plots
datasaurus |>
  ggplot(aes(x, y, color = dataset)) +
  geom_point() +
  facet_wrap(vars(dataset)) +
  jtools::theme_nice() +
  theme(legend.position = "none") +
  labs(title = "Same summary statistics, very different distributions")
#
#
#
#
#
