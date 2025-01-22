#
#
#
#
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
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
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
  ggforce::geom_mark_ellipse( # <1>
    aes(fill = species), # <2>
    alpha = 0.05, # <3>
    color = 'transparent' # <4>
  ) +
  geom_point(aes(color = species)) +
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
  ggforce::geom_mark_ellipse(
    aes(fill = species),
    alpha = 0.05, 
    color = 'transparent' 
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
  ggforce::geom_mark_ellipse(
    aes(fill = species),
    alpha = 0.05,
    color = 'transparent' 
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
  ggforce::geom_mark_ellipse(
    aes(fill = species),
    alpha = 0.05,
    color = 'transparent' 
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
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
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

ggplot(
    data = iris,
    aes(
        x = Sepal.Width,
        y = Petal.Width
    )
) +
  ggforce::geom_mark_rect(
    aes(fill = Species),
    alpha = 0.05,
    color = 'transparent' 
  ) +
  geom_point(
      aes(
          shape = Species,
          fill = Species
      ),
      color = "white",
      size = 3,
      alpha = .6
  ) +
  scale_shape_manual(values = c(21, 22, 23)) +
  scale_fill_manual(
    values = MetBrewer::met.brewer(name="Demuth", n=3, type="discrete") 
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
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
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
library(MetBrewer)

p_exe <- ggplot(
    data = iris,
    aes(
        x = Sepal.Width,
        y = Petal.Width
    )
) +
  geom_point(
      aes(
          shape = Species,
          fill = Species
      ),
      color = "white",
      size = 3,
      alpha = .6
  ) +
  scale_shape_manual(values = c(21, 22, 23)) +
  scale_fill_manual(
    values = MetBrewer::met.brewer(name="Demuth", n=3, type="discrete") 
  ) +
  theme_minimal()

p_exe +
  labs(
      x = "Petal width (cm)",
      y = "Sepal width (cm)",
      title = "Association between Sepal and Petal Width"
  ) +
  geom_smooth(
      aes(group = Species, color = Species),
      method = "lm", se = FALSE
  ) +
  scale_color_manual(
    values = MetBrewer::met.brewer(name="Demuth", n=3, type="discrete") 
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
#| warning: false
#| source-line-numbers: "4"
p1 +
  theme(
    legend.position = c(0.12, 0.1) # <1>
  )
```
#
#
#
#
#
#
#
#| warning: false
#| source-line-numbers: "4"
p1 +
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
  theme(
    legend.position = c(0.12, 0.1),
    legend.title = element_blank() # <1>
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
#| warning: false
p1 +
  theme(
    legend.position = "top"
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
#
#| warning: false

p1 +
  facet_wrap(~species) + # <1> 
  theme(
    legend.position = "none"
  )
#
#
#
#
#| warning: false

p1 +
    theme(legend.position = "none") +
    annotate("text", # <1>
        x = 33, y = 14, # <2>
        label = "Adelie", # <3>
        color = "#00AFBB", size = 5 # <4>
    ) + 
    annotate("text",
        x = 55, y = 22,
        label = "Chinstrap", color = "#E7B800", size = 5
    ) +
    annotate("text",
        x = 58, y = 14,
        label = "Gentoo", color = "#FC4E07", size = 5
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
p1 +
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
#
#
#
#
#
#
#
#
#
#
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
  theme( # <1>
    axis.text = element_text(size = 12), # <2>
    axis.title = element_text(size = 14),  # <3>
    plot.title = element_text(size = 16), # <4>
    legend.text = element_text(size = 12) # <5>
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
#
#
#
#
#| eval: false
p2 + 
  patchwork::plot_layout(widths = 50, heights = 50) +
  theme(...)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
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
ggsave(
  filename = "plot.pdf", # <1>
  plot = p3, # <2>
  width = 8, # <3>
  height = 6, # <4>
  units = "in", # <5>
  device = cairo_pdf
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
#| warning: false
#| eval: false
ggsave(
  filename = "plot.png", # <1>
  plot = p3, 
  width = 8, 
  height = 6, 
  units = "in", 
  device = ragg::agg_png # <2>
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
#| warning: false
#| eval: false

p_svg <- p3 + 
  theme(
    panel.background = element_rect(fill = "transparent", colour = NA_character_), # <1>
    plot.background = element_rect(fill = "transparent", colour = NA_character_), # <2>
    legend.background = element_rect(fill = "transparent"), # <3>
    legend.box.background = element_rect(fill = "transparent"), # <4>
    legend.key = element_rect(fill = "transparent") # <5>
  )

ggsave(
  filename = "plot.svg", 
  plot = p_svg, 
  width = 8, 
  height = 6, 
  units = "in"
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
  geom_point_interactive( # <2>
    aes(
      color = species, 
      data_id = sex, # <3>
      tooltip = body_mass_g # <4>
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
