#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
numbers <- c(1, 2, 3, 4, 5)  # <1>
numbers # <2>
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
numbers <- c(1.1, 2.2, 3.3, 4.4, 5.5) # <1>
characters <- c("a", "b", "c") # <2>
logicals <- c(TRUE, FALSE, TRUE) # <3>
factors <- factor(c("a", "b", "c")) # <4>
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
class(numbers) 
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
library(tidyverse) # <1>
tibble( # <2>
    x = c(1, 2, 3),  # <3>
    y = c("a", "b", "c"), # <4>
    z = c(TRUE, FALSE, TRUE) # <5>
) # <6>
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
tribble( # <1>
  ~x, ~y, # <2>
  1, "a", # <3>
  2, "b", 
  3, "c"
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
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# install.packages("palmerpenguins")   # <1>
library(palmerpenguins) # <2>
data(package = "palmerpenguins") # <3>
```
#
#
#
#
#
#
#
penguins # <1>
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
pacman::p_load(skimr) # <1>
skim(penguins) # <2>
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
