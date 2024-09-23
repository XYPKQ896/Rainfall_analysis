#### Preamble ####
<<<<<<< HEAD
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Rui Hu
# Date: 22 September 2024
# Contact: hr.hu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None
=======
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]
>>>>>>> 4975f1b355327449de4b58c2667db3b8385bb1f7


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
<<<<<<< HEAD
library(dplyr)

# get package
package <- show_package("f2933501-0373-4734-b50c-4e4f39646180")

# get all resources for this package
resources <- list_package_resources("f2933501-0373-4734-b50c-4e4f39646180")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==10) %>% 
  get_resource()

data$date <- as.Date(data$date, format = "%Y-%m-%dT%H:%M:%S")

raw_data <- data %>%
  group_by(date) %>%
  summarise(
    Total_Rainfall = sum(rainfall, na.rm = TRUE)
  )
summary(raw_data$Total_Rainfall)

#### Save data ####
write_csv(raw_data, "data/raw_data/raw_data.csv")
=======
# [...UPDATE THIS...]

#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
>>>>>>> 4975f1b355327449de4b58c2667db3b8385bb1f7
