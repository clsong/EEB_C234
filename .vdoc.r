#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
data_nobel <- read.csv("http://clsong.com/assets/class_data/data_nobel.csv")
#
#
#
#
#| warning: false
library(tidyverse)

ggplot(
    data = data_nobel,
    aes(x = Chocolate, y = Nobel)
) +
    geom_point() +
    theme_bw()
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
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
#| echo: false
data_nobel %>%
    ggplot(aes(x = Chocolate, y = Nobel)) +
    ggflags::geom_flag(aes(country = Flag)) +
    ggpubr::stat_cor(
        method = "pearson",
        label.x = .5,
        label.y = 27,
        p.accuracy = 0.001,
        r.accuracy = 0.01,
        size = 6
    ) +
    ggrepel::geom_text_repel(
        aes(label = Country),
        box.padding = 0.5,
        point.padding = 0.5
    ) +
    labs(
        title = "More Chocolate Consumption, More Nobel Prizes",
        subtitle = "Why Correlation is Not Causation",
        x = "Chocolate consumption\n(kg/year/capita)",
        y = "Nobel laureates\n(per 10 million people)",
        caption = "Data: Messerli (2012) , New England Journal of Medicine"
    ) +
    hrbrthemes::theme_ipsum(
        axis_text_size = 16,
        axis_title_size = 18
    ) +
    theme(
        plot.title = element_text(size = 25),
        plot.caption = element_text(size = 14),
        plot.subtitle = element_text(size = 20)
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
data_nyt <- read.csv("http://clsong.com/assets/class_data/data_nyt.csv")
#
#
#
#
#
#
#
#
#
#
#
#
#
#
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
#| echo: false

library(tidyverse)
library(ggiraph)

data_nyt %>% 
  ggplot(aes(GDP, Doses)) +
  geom_point(
    aes(size = Population,
        fill = Continent),
    alpha = 0.5,
    shape = 21,
    color = 'transparent'
  ) +
  labs(
    x = "G.D.P. per capita",
    y = "doses administered per 100 people",
    title = "Wealthier countries have administered more COVID-19 vacacines",
    subtitle = "Circles are sized by country population"
  ) +
  scale_x_log10(
    breaks = c(1000, 10000, 100000),
    labels = scales::label_currency(),
    limits = c(1000, 120000)
  ) +
  scale_y_continuous(
    limits = c(0, 250)
  ) +
  scale_size(
    guide = 'none',
    range = c(1, 12)
  ) +
  scale_fill_manual(
    name = "",
    values = MoMAColors::moma.colors("Klein", n=6, type="discrete")
  ) +
  hrbrthemes::theme_ft_rc(
    axis_text_size = 12,
    axis_title_size = 12,
    plot_title_size = 14
  ) +
  theme(
    legend.text=element_text(size=12),
    legend.position = c(.15, .8),
    legend.key.size = unit(0.15, 'in'),
    panel.grid.minor = element_blank()
  )
#
#
#
