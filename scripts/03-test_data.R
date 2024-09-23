#### Preamble ####
# Purpose: Sanity check of the data
# Author: Rui Hu
# Date: 23 September 2024
# Contact: hr.hu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$rainfall |> min() <= 0

# Test for NAs
all(is.na(data$rainfall))