# load_packages.R
# Purpose: Install and load required packages for analysis scripts

required_packages <- c(
  "tidyverse",
  "skimr", 
  "janitor"
)

for (pkg in required_packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  }
}
