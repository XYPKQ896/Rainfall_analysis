#### Preamble ####
# Purpose: Simulates data
# Author: Rui Hu
# Date: 22 September 2024
# Contact: hr.hu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(304)

# Define the start and end date
start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-03-15")

# Set the number of random dates you want to generate
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    rainfall = rgamma(number_of_dates,0.03,0.01)
  )
summary(data$rainfall)

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")


