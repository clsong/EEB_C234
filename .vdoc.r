#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
pacman::p_load(palmerpenguins) 
#
#
#
#
#| warning: false
library(ggplot2) # <1>
ggplot( # <2>
  data = penguins, # <3>
  aes(x = bill_length_mm, # <4> 
      y = bill_depth_mm) # <5>
) +  # <6>
  geom_point() # <7>
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
#| eval: false
ggplot(
  data = <DATA>, # <1>
  aes(x = <X>, y = <Y>) # <2>
) + # <3>
  <GEOM_FUNCTION>(aes(...)) # <4>
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
#| source-line-numbers: "8"
ggplot(
  data = penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm
  )) +
  geom_point(aes(color = species)) # <1>
```
#
#
#
#
#| warning: false
#| source-line-numbers: "8"
ggplot(
  data = penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm 
  )) +
  geom_point(aes(color = species, shape = species)) # <1>
```
#
#
#
#
#
#| warning: false
#| source-line-numbers: "9"
ggplot(
  data = penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm 
  )) +
  geom_point(aes(color = species, shape = species)) +
  theme_bw() # <1>
```
#
#
#
#
#
#
#
#| warning: false
# install.packages("jtools") # <1>
ggplot(
  data = penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm,
    color = species,
    shape = species
  )) +
  geom_point() +
  jtools::theme_nice() # <2>
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
