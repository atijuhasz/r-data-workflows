# clean_basic.R
# Purpose: Apply common, safe data cleaning steps to a data frame

#' Basic data cleaning
#'
#' Applies a set of non-destructive cleaning steps:
#' - Standardizes column names
#' - Removes duplicate rows
#' - Trims whitespace in character columns
#'
#' @param df A data frame or tibble
#' @return A cleaned tibble
#'
#' @examples
#' cleaned_data <- clean_basic(raw_data)
clean_basic <- function(df) {
  
  df |>
    janitor::clean_names() |>
    dplyr::distinct() |>
    dplyr::mutate(
      dplyr::across(
        where(is.character),
        trimws
      )
    )
}
