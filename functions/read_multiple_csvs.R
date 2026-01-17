# read_multiple_csvs.R
# Purpose: Read multiple CSV files from a folder into a single tibble
#          and track the source file for each row

#' @param folder_path Path to the folder containing CSV files
#' @param pattern Regex pattern for files to read (default: "\\.csv$")
#' @param id_column Name of the column identifying file order
#' @param file_column Name of the column containing source filenames
#'
#' @return A tibble combining all CSV files with source tracking columns
#'
#' @examples
#' combined_data <- read_multiple_csvs("data/raw")

read_multiple_csvs <- function(
  folder_path,
  pattern = "\\.csv$",
  id_column = "file_id",
  file_column = "file"
) {
  
  # Find CSV files
  files <- list.files(
    path = folder_path,
    pattern = pattern,
    full.names = TRUE
  )
  
  if (length(files) == 0) {
    stop("No CSV files found in the specified folder.")
  }
  
  # Read and combine
  combined_data <- lapply(files, readr::read_csv) |>
    dplyr::bind_rows(.id = id_column)
  
  # Add filename column
  combined_data[[file_column]] <-
    basename(files)[as.integer(combined_data[[id_column]])]
  
  return(combined_data)
}
