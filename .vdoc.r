#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| eval: false
library(tidyverse)
library(readxl) # <1>
library(lubridate) # <2>

data_ts <- read_excel("_____", col_types = _______) |>
    janitor::clean_names() |>
    mutate(date = ymd(date) - years(1900)) # <3>


data_temperature <- read_excel("______",
    sheet = "______", col_types = c(_______)
) |>
    janitor::clean_names()
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
#| echo: false
#| warning: false
library(tidyverse)
library(readxl)
library(lubridate)

data_ts <- read_excel("data/pnas.1421968112.sd01.xlsx",
    col_types = c(
        "date", "numeric", "skip",
        "skip", "numeric", "skip", "skip",
        "skip", "skip", "skip", "numeric",
        "skip", "skip"
    )
) |>
    janitor::clean_names() |>
    mutate(date = ymd(date) - years(1900))


data_temperature <- read_excel("data/pnas.1421968112.sd01.xlsx",
    sheet = "Temperature Data Fig.2A", col_types = c(
        "date", "numeric", "skip", "skip", "skip", "skip"
    )
) |>
    janitor::clean_names()

data <- data_ts |>
    left_join(data_temperature)

data |>
    pivot_longer(cols = -c(date, temperature_o_c), names_to = "species", values_to = "abundance") |>
    mutate(
        species = str_replace(species, "_percent", "")
    )
#
#
#
#
#
#
#
#| eval: false
#| echo: false
library(tidyverse)
library(readxl)
library(lubridate)

data_ts <- read_excel("data/pnas.1421968112.sd01.xlsx",
    col_types = c(
        "date", "numeric", "skip",
        "skip", "numeric", "skip", "skip",
        "skip", "skip", "skip", "numeric",
        "skip", "skip"
    )
) |>
    janitor::clean_names() |>
    mutate(date = ymd(date) - years(1900))


data_temperature <- read_excel("data/pnas.1421968112.sd01.xlsx",
    sheet = "Temperature Data Fig.2A", col_types = c(
        "date", "numeric", "skip", "skip", "skip", "skip"
    )
) |>
    janitor::clean_names()

data <- data_ts |>
    left_join(data_temperature)

data_long <- data |>
    pivot_longer(cols = -c(date, temperature_o_c), names_to = "species", values_to = "abundance")

data_long  |> 
    group_by(species) |> 
    summarise(
        cor = cor(temperature_o_c, abundance, use = "complete.obs")
    )

library(gghighlight)
ggthemr::ggthemr(palette = "fresh")

data_long %>%
    ggplot(aes(date, abundance)) +
    geom_line(aes(group = species, color = species)) +
    gghighlight(use_direct_label = F) +
    facet_wrap(~species) +
    jtools::theme_nice() +
    labs(
        x = "Time",
        y = "Abundance"
    ) +
    theme(
        legend.position = "none"
    )

data_long %>%
    ggplot(aes(temperature_o_c, abundance)) +
    geom_point(aes(color = species)) +
    facet_wrap(~species) +
    labs(
        x = "Temperature (°C)",
        y = "Abundance"
    ) +
    jtools::theme_nice() +
    theme(
        legend.position = "none"
    )
#
#
#
#
#
#
