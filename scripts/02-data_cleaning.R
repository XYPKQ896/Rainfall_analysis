#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Rui Hu
# Date: 22 September 2024
# Contact: hr.hu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")
cleaned_data <- raw_data
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")