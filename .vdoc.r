#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
print("Hello, World!") # <1>
```
#
#
#
#
3 + 2
#
#
#
#
x <- 3 + 2 # <1>
x       # <2>
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
#| eval: false
install.packages("ggplot2")
#
#
#
#
#| warning: false
library(ggplot2)
#
#
#
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
# install.packages("devtools") # <1>
library(devtools) # <2>
devtools::install_github("cttobin/ggthemr") # <3>
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
# install.packages("pacman") # <1>
library(pacman) # <2>
p_load(ggplot2) # <3>
```
#
#
#
#
#
#
#
#
pacman::p_load(ggplot2) # <1>
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
#| eval: false
install.packages("tidyverse")
#
#
#
#
library(tidyverse)
#
#
#
#
#
#
#
#
#| eval: false
library(conflicted)  # <1>
library(tidyverse)  # <2>
conflict_prefer("filter", "dplyr") # <3>
conflict_prefer("lag", "dplyr") # <4>
```
#
#
#
#
#
#
#
#| eval: false
dplyr::filter()
dplyr::lag()
```
#
#
#
#
#
#
#
#
suppressPackageStartupMessages(library(tidyverse))
#
#
#
#
#
#
#
#
#
#
