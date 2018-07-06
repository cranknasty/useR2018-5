# https://juliasilge.com/blog/mining-cran-description/

library(dplyr)

cran <- tools::CRAN_package_db()[, -65]

nrow(cran)

cran %>% 
  count(VignetteBuilder, sort = TRUE)

cran %>% 
  select(Package, VignetteBuilder) %>% 
  mutate(knitr_like = grepl("knitr", VignetteBuilder)) %>% 
  count(knitr_like, sort = TRUE)
