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
  geom_point(aes(color = species)) +
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
  jtools::theme_nice() # <1>
```
#
#
#
#
#
#| eval: false
pacman::p_load(devtools)
install_github('Mikata-Project/ggthemr')
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
  ggthemr::ggthemr('fresh', set_theme = FALSE)$theme
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
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    )
) +
  geom_point(aes(color = species)) +
  hrbrthemes::theme_ipsum()
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
  hrbrthemes::theme_modern_rc()
#
#
#
#
#
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
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    )
) +
  geom_point(
    aes(fill = species), # <1>
    color = "white", # <2>
    shape = 21, # <3>
    alpha = .6, # <4>
    size = 3 # <5>
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
  geom_point(
    aes(
      fill = species, 
      size = body_mass_g
    ), 
    shape = 21,
    color = "transparent",
    alpha = .3
  ) +
  geom_point(
    aes(
      size = body_mass_g
    ), 
    shape = 21,
    color = "white",
    fill = "transparent"
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
  geom_point(
    aes(
      shape = species,
      fill = species # <1>
    ), 
    color = "white",
    size = 3,
    alpha = .6
  ) +
  scale_shape_manual(values = c(21, 22, 23)) + # <2>
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
#| warning: false
library(ggplot2)
library(palmerpenguins)
p <- ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    )
) +
  geom_point(
    aes(
      shape = species,
      fill = species 
    ), 
    color = "white",
    size = 3,
    alpha = .6
  ) +
  scale_shape_manual(values = c(21, 22, 23)) + 
  scale_fill_manual( # <1>
    values = c(
      "Adelie" = "#00AFBB",  # <2>
      "Chinstrap" = "#E7B800",  # <3>
      "Gentoo" = "#FC4E07" # <4>
    ) 
  ) +
  jtools::theme_nice()

p
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
library(ggplot2)
library(palmerpenguins)
ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    )
) +
  geom_point(
    aes(fill = species),
    color = "white", 
    shape = 21, 
    alpha = .6, 
    size = 3 
  ) +
  scale_fill_manual(
    values = c("#00AFBB", "#E7B800", "#FC4E07") # <1>
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
  ggdensity::geom_hdr(aes(fill = species)) + # <1>
  # geom_point(shape = 21) +  # <2>
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
#
#
#
#
#| warning: false
p + 
  labs( 
    x = "Bill Length (mm)", # <1>
    y = "Bill Depth (mm)" # <2>
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
#| warning: false
#| source-line-numbers: "6"
p + 
  labs(
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    title = "Bill Length and Depth of Penguins are Positively Correlated" # <1>
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
#| warning: false
#| source-line-numbers: "8"
p1 <- p + 
  labs(
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    title = "Bill Length and Depth are Positively Correlated"
  ) +
  geom_smooth(
    aes(group = species, color = species), # <1>
    method = "lm", se = FALSE  # <2>
  ) +
  scale_color_manual( # <3>
    values = c(
      "Adelie" = "#00AFBB",  
      "Chinstrap" = "#E7B800", 
      "Gentoo" = "#FC4E07" 
    ) 
  )

p1
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
#| warning: false
p2 <- p1 +
  theme( # <1>
    axis.text = element_text(size = 12), # <2>
    axis.title = element_text(size = 14),  # <3>
    plot.title = element_text(size = 16), # <4>
    legend.text = element_text(size = 12) # <5>
  )
p2
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
#| source-line-numbers: "4"
p2 +
  theme(
    legend.position = "top"  # <1>
    # legend.position = "bottom" # <2>
  )
```
#
#
#
#
#
#
#| warning: false
#| source-line-numbers: "8"
p2 +
  theme(
    legend.position = c(0.85, 0.13) # <1>
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
#| warning: false
p3 <- p2 +
  theme(
    legend.position = c(0.85, 0.13),
    legend.title = element_blank(), # <1>,
    plot.title = element_text(size = 18) # <2>
  )

p3
```
#
#
#
#
#
#
#
#| warning: false
p2 +
  theme(
    legend.position = 'top'
  ) +
  labs(
    color = "Penguin species",  # <1>
    shape = "Penguin species",  # <2>
    fill = "Penguin species",  # <3>,
    linetype = "Penguin species"  # <4>
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
#| warning: false
library(ggtext)
p2 +
  theme(
    legend.position = "none"
  ) +
  labs(
    subtitle = "Penguin Species: 
    <span style = 'color:#00AFBB;'>**Adelie**</span><span style = 'color:#00AFBB;font-size:22pt'>\u25CF</span>,
    <span style = 'color:#E7B800;'>**Chinstrap**</span><span style = 'color:#E7B800;font-size:20pt'>\u25A0</span>,
    <span style = 'color:#FC4E07;'>**Gentoo**</span><span style = 'color:#FC4E07;font-size:22pt'>\u2666</span>"
  ) +
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_textbox_simple(halign = 0, size = 12)
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
#| eval: false

library(ggplot2)
library(palmerpenguins)

ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    )
) +
  ggforce::geom_mark_ellipse(
    aes(fill = species),
    alpha = 0.05,
    color = 'transparent') +
  geom_point(
    aes(
      shape = species,
      fill = species 
    ), 
    color = "white",
    size = 3,
    alpha = .6
  ) +
  geom_smooth(
    aes(group = species, color = species), 
    method = "lm", se = FALSE  
  ) +
  scale_shape_manual(values = c(21, 22, 23)) + 
  scale_fill_manual(
    values = c(
      "Adelie" = "#00AFBB",  
      "Chinstrap" = "#E7B800", 
      "Gentoo" = "#FC4E07" 
    ) 
  ) +
  scale_color_manual( 
    values = c(
      "Adelie" = "#00AFBB",  
      "Chinstrap" = "#E7B800", 
      "Gentoo" = "#FC4E07" 
    ) 
  ) +
  labs(
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)",
    title = "Bill Length and Depth are Positively Correlated"
  ) +
  jtools::theme_nice() +
  theme( 
    axis.text = element_text(size = 12), 
    axis.title = element_text(size = 14), 
    plot.title = element_text(size = 18),
    legend.text = element_text(size = 12) ,
    # legend.position = c(0.85, 0.13),
    legend.position = "none",
    legend.title = element_blank()
  )
#
#
#
#
#
#
#| warning: false
#| eval: false
ggsave(
  filename = "plot.pdf", # <1>
  plot = p3, # <2>
  width = 8, # <3>
  height = 6, # <4>
  units = "in", # <5>
  dpi = 300 # <6>
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
#| warning: false

library(ggplot2)
library(palmerpenguins)
library(ggiraph) # <1>

p_interactive <- ggplot(
    data = penguins,
    aes(
        x = bill_length_mm,
        y = bill_depth_mm
    )
) +
  geom_point_interactive(
    aes(
      color = species,
      data_id = sex,
      tooltip = body_mass_g
    )
  ) +
  jtools::theme_nice() +
  theme(legend.position = "top")

girafe(ggobj = p_interactive)
```
#
#
#
#
#
pacman::p_load(datasauRus)

# datasaurus_dozen |>
#   ggplot(aes(x = x, y = y, colour = dataset)) +
#   geom_point() +
#   theme_minimal() +
#   facet_wrap(vars(dataset)) +
#   labs(color = "Dataset")
```
#
#
#
#
