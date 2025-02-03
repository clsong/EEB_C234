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
library(tidyverse)
library(tidylog)
library(palmerpenguins)
theme_set(theme_minimal()) #<1>
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
penguins |>
    ggplot(aes(x = flipper_length_mm)) +
    geom_histogram(color = "white")
#
#
#
#
#
#| echo: false
#| warning: false
library(patchwork)

c(1, 5, 20) %>%
    map(~ penguins |>
        ggplot(aes(x = flipper_length_mm)) +
        geom_histogram(binwidth = ., color = "white")
    ) |>
    wrap_plots()
#
#
#
#
#
#
#
#
#| warning: false
penguins |>
    ggplot(aes(x = flipper_length_mm)) +
    geom_density(fill = "lightblue")
#
#
#
#
#
#| warning: false
penguins |>
    drop_na(flipper_length_mm) |>
    mutate(flipper_length_mm_normalized = (flipper_length_mm - min(flipper_length_mm)) / (max(flipper_length_mm) - min(flipper_length_mm))) |>
    ggplot(aes(x = flipper_length_mm_normalized)) +
    geom_density(fill = "lightblue") +
    xlim(-.2, 1.2) # <1>
```
#
#
#
#
#
#| warning: false
#| source-line-numbers: "6"
penguins |>
    drop_na(flipper_length_mm) |>
    mutate(flipper_length_mm_normalized = (flipper_length_mm - min(flipper_length_mm)) / (max(flipper_length_mm) - min(flipper_length_mm))) |>
    ggplot(aes(x = flipper_length_mm_normalized)) +
    geom_density(fill = "lightblue", 
                bounds = c(0, 1)) + # <1>
    xlim(-.2, 1.2)
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
#| warning: false
penguins |> 
    ggplot(aes(x = flipper_length_mm, group = species, fill = species)) +
    geom_histogram(color = "white", alpha = .5,position = "identity") +
    theme(legend.position = "top")
#
#
#
#
#
#
#
#| warning: false
penguins |>
    ggplot(aes(x = flipper_length_mm, group = species, fill = species)) +
    geom_histogram(color = "white", position = "stack") +
    theme(legend.position = "top")
#
#
#
#
#
#
#
#| warning: false
penguins |> 
    ggplot(aes(x = flipper_length_mm, group = species, fill = species)) +
    geom_histogram(color = "white", position = "dodge") +
    theme(legend.position = "top")
#
#
#
#
#
#
#
#| warning: false
penguins |> 
    ggplot(aes(
        x = flipper_length_mm, 
        group = species, 
        fill = species, 
        color = species)) +
    geom_density(alpha = .5) +
    theme(legend.position = "top")
#
#
#
#
#
#| warning: false
library(geomtextpath)

penguins |> 
    ggplot(aes(x = flipper_length_mm, group = species, color = species)) +
    geom_textdensity(alpha = .5, aes(label = species), size = 5) +
    theme(legend.position = "none")
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
library(gghighlight)

penguins |> 
    ggplot(aes(x = flipper_length_mm, fill = species)) +
    geom_histogram(color = "white") +
    gghighlight() +
    facet_wrap(~species)
#
#
#
#
#
#
#
#| warning: false
penguins |> 
    ggplot(aes(x = flipper_length_mm)) +
    geom_density(
        data = filter(penguins, sex == "male"),
        aes(y = ..density..),
        alpha = .5, fill = "#69b3a2", color = "black") +
    geom_label( aes(x=180, y=0.02, label="male"), color="#69b3a2", size = 5) +
    geom_density(
        data = filter(penguins, sex == "female"),
        aes(y = -..density..),
        alpha = .5, fill = "#404080", color = "black") +
    geom_label( aes(x=228, y=-0.01, label="female"), color="#404080", size = 5)
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
library(ggridges)
lincoln_weather_clean <- lincoln_weather |>
    select(CST, `Mean Temperature [F]`) |>
    mutate(CST = ymd(CST)) |>
    mutate(month = month(CST, label = TRUE))

lincoln_weather_clean
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
lincoln_weather_clean |>
    group_by(month) |>
    summarise(mean = mean(`Mean Temperature [F]`),
              lower = quantile(`Mean Temperature [F]`, 0.025),
              upper = quantile(`Mean Temperature [F]`, 0.975)) |>
    ggplot(aes(x = month, y = mean, ymin = lower, ymax = upper)) +
    geom_pointrange()
#
#
#
#
#
lincoln_weather_clean |>
    group_by(month) |>
    summarise(mean = mean(`Mean Temperature [F]`),
              sd = sd(`Mean Temperature [F]`)) |>
    ggplot(aes(x = month, y = mean)) +
    geom_pointrange(aes(ymin = mean - sd, ymax = mean + sd))
#
#
#
#
#
lincoln_weather_clean |>
    group_by(month) |>
    summarise(mean = mean(`Mean Temperature [F]`),
              se = sd(`Mean Temperature [F]`) / sqrt(n())) |>
    ggplot(aes(x = month, y = mean)) +
    geom_pointrange(aes(ymin = mean - se, ymax = mean + se))
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
lincoln_weather_clean |> 
    ggplot(aes(x = month, y = `Mean Temperature [F]`)) +
    geom_boxplot() 
#
#
#
#
#
#| warning: false
lincoln_weather_clean |> 
    ggplot(aes(x = month, y = `Mean Temperature [F]`)) +
    geom_violin() 
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
lincoln_weather_clean |> 
    ggplot(aes(x = month, y = `Mean Temperature [F]`)) +
    geom_point(alpha = .5)
#
#
#
#
#
lincoln_weather_clean |> 
    ggplot(aes(x = month, y = `Mean Temperature [F]`)) +
    geom_jitter(alpha = .5)
#
#
#
#
#
#
lincoln_weather_clean |> 
    ggplot(aes(x = month, y = `Mean Temperature [F]`)) +
    ggbeeswarm::geom_quasirandom(varwidth = TRUE) 
```
#
#
#
#
#
lincoln_weather_clean |> 
    ggplot(aes(x = month, y = `Mean Temperature [F]`)) +
    geom_violin(alpha = .5) +
    ggforce::geom_sina()
#
#
#
#
#
#
#
#| warning: false
library(ggridges)
lincoln_weather_clean |> 
    ggplot(aes(
        x = `Mean Temperature [F]`, 
        y = month, 
        fill = month, 
        color = month
    )) +
    geom_density_ridges(alpha = .5) +
    theme_ridges() +
    theme(legend.position = "none") 
#
#
#
#
