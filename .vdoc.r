#
#
#
#
#
#
#
#
#
#
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
#| source-line-numbers: "11"
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm 
    )
) +
    geom_point(aes(color = "blue")) + # <1>
    theme_minimal()
```
#
#
#
#
#| warning: false
#| source-line-numbers: "11"
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm 
    ) 
) +
    geom_point(color = "blue") + # <1>
    theme_minimal()
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
#| warning: false
library(ggplot2)
library(palmerpenguins)
ggplot(data = penguins, 
    aes(x = bill_length_mm, y = bill_depth_mm)
) +
    geom_point(
        aes(
            color = species, # <1>
            size = body_mass_g # <2>
        ),
        alpha = 0.5, # <3>
        shape = 21, # <4>
        fill = "white" # <5>
    ) +
    theme_minimal()
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
#
#
#
#
#
#
#
#
#
#
#
#
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
#| source-line-numbers: "11"
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm 
    ) 
) +
    geom_point() + # <1>
    theme_minimal()
```
#
#
#
#
#| warning: false
#| source-line-numbers: "11"
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm 
    ) 
) +
    geom_smooth() + # <1>
    theme_minimal()
```
#
#
#
#
#
#
#
#| warning: false
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm 
    ) 
) +
    geom_point() + # <1>
    geom_smooth() + # <2>
    theme_minimal()
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
#| warning: false
#| source-line-numbers: "12"
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    ) 
) +
    geom_point() + 
    geom_smooth(aes(group = species)) +     # <1>
    theme_minimal()
```
#
#
#
#
#| warning: false
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    ) 
) +
    geom_point(aes(color = species)) + 
    geom_smooth(aes(group = species)) + 
    theme_minimal()
#
#
#
#
#
#
#
#| warning: false
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    ) 
) +
    geom_point(aes(color = species)) + # <1>
    geom_smooth(aes(group = species, color = species)) +  # <2>
    theme_minimal()
```
#
#
#
#
#
#| warning: false
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm,
        group = species, # <1>
        color = species # <2>
    ) 
) +
    geom_point() + 
    geom_smooth() +  
    theme_minimal()
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
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins
) +
    geom_point(
        aes(
            x = bill_length_mm,
            y = bill_depth_mm,
            group = species,
            color = species # <1>
        )
    ) +
    geom_smooth(
        aes(
            x = bill_length_mm,
            y = bill_depth_mm,
            group = species,
            color = species # <1>
        )
    ) +
    theme_minimal()
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
library(ggplot2)
library(palmerpenguins)
ggplot(
  data = penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm
  )
) +
  geom_point(aes(color = species)) +
  geom_smooth(aes(group = island)) +
  theme_minimal()
```
#
#
#
#
#
#
#
#| warning: false
library(tidyverse)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    ) 
) +
    geom_point(aes(color = species)) + 
    geom_smooth(data = filter(penguins, species == "Gentoo")) + 
    theme_minimal()
#
#
#
#
#
