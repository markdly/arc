# downloading course materials
library(tidyverse)
library(rvest)
www <- "http://edmeasurementsurveys.com/MelbSD/"
docs <- read_html(www) %>% 
  html_nodes("td") %>% 
  html_nodes("p") %>% 
  html_nodes("a") %>% 
  html_attr("href")

docs %>% walk(~ download.file(paste0(www, .), .))


# Week 1
rmarkdown::render("01-CTT/Bscored-final.Rmd")

