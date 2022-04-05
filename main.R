library(ggplot2)
library(here)
library(dplyr)
# source(file=here("my_helper_functions.R"))

X = read.csv(here('onedrive', 'Working', 'Final Data', 'Patient Demographics 17 20220326.txt'), sep="|")
head(X)
