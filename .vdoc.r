#
#
#
#
#
#| message: false
library(tidyverse)
library(tidylog)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
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

read_csv("data/per-capita-co-emissions.csv")
#
#
#
#
#
#| message: false
# if you don't have the janitor package installed, you can install it with the following command
# pak::pkg_install("janitor")

read_csv("data/per-capita-co-emissions.csv")  |> 
    janitor::clean_names()
#
#
#
#
#
#
#
data_co2 <- read_csv("data/per-capita-co-emissions.csv")  |> 
    janitor::clean_names()  |>  # <1>
    rename(  # <2>
        co2 = annual_co2_emissions_per_capita # <3>
    )
```
#
#
#
#
#
#
#
data_co2 |> 
    ggplot(aes(x = year, y = co2)) +
    geom_line() + # <1>
    labs(
        x = "Year",
        y = "Annual CO2 emissions per capita"
    ) +
    jtools::theme_nice()
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
#| message: false

data_temp <- read_csv("data/temperature-anomaly.csv") |> 
    janitor::clean_names()  |> 
    select(year, global_average_temperature_anomaly_relative_to_1961_1990) |>
    rename(temp_anomaly = global_average_temperature_anomaly_relative_to_1961_1990)

data_temp
#
#
#
#
#
#| message: false

data_co2  |> 
    left_join(
        data_temp, 
        by = "year"
    ) 
#
#
#
#
#
#
#
data_co2  |> 
    left_join(
        data_temp, 
        by = "year"
    )  |> 
    drop_na() |>
    ggplot(
        aes(x = co2, 
            y = temp_anomaly)
        ) +
    geom_smooth(se = FALSE) +
    geom_point(aes(color = year)) +
    scale_color_viridis_c() +
    labs(
        x = "Annual CO2 emissions per capita",
        y = "Average temperature anomaly"
    ) +
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
library(tidyverse)

band_members  |> 
   left_join(
        band_instruments, 
        by = "name"
   )

band_instruments  |>
    left_join(
          band_members, 
          by = "name"
    )
#
#
#
#
#
#
#
