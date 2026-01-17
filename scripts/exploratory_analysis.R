source("utils/load_packages.R")
source("functions/read_multiple_csvs.R")
source("functions/clean_basic.R")
source("functions/summary_helper.R")

raw_data <- read_multiple_csvs("data/raw")
clean_data <- clean_basic(raw_data)

glimpse(clean_data)

summary_helper(clean_data)
