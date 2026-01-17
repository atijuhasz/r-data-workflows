# summary_helper.R
# Purpose: Provide a quick, consistent summary of a dataset

#' Quick dataset summary
#'
#' Prints a structured overview of a dataset using skimr.
#'
#' @param df A data frame or tibble
#' @param show_structure Logical; whether to print structure info (default: TRUE)
#'
#' @return Invisibly returns the skimr summary object
#'
#' @examples
#' summary_helper(clean_data)
summary_helper <- function(df, show_structure = TRUE) {
  
  if (show_structure) {
    message("Dataset structure:")
    print(str(df))
  }
  
  message("\nSkim summary:")
  skim_summary <- skimr::skim(df)
  print(skim_summary)
  
  invisible(skim_summary)
}
