#' CSV Import Function
#'
#' This function allows you to import only csv files in the parent directory.
#' @param df Do you want individual dataframes? Defaults to FALSE
#' @keywords csv
#' @export
#' @examples
#' csv_only() # All csv files are located in the 'csv' list object.
#' csv_only(df = TRUE) # All csv files are now individual objects.
#' csv_only()

csv_only <- function(df = FALSE) {
  tempcsv = dir(pattern=".csv", all.files = T)
  csv = map(set_names(tempcsv, tempcsv), read_csv)
  if (df) {
    list2env(csv, .GlobalEnv)
    message("All csv files are now objects")
  }
  else {
    csv <<- csv
    message("All csv files are located in the 'csv' list object.")
  }
}

#' XLSX Import Function
#'
#' This function allows you to import only xlsx files in the parent directory.
#' @param df Do you want individual dataframes? Defaults to FALSE
#' @keywords csv
#' @export
#' @examples
#' xlsx_only()

xlsx_only <- function(df = FALSE) {
  tempxlsx = dir(pattern=".xlsx", all.files = T)
  xlsx <- map(set_names(tempxlsx, tempxlsx), read_xlsx)
  if (df) {
    list2env(xlsx, .GlobalEnv)
    message("All xlsx files are now objects")
  }
  else {
    xlsx <<- xlsx
    message("All xlsx files are located in the 'xlsx' list object.")
  }
}

#' Import All Function
#'
#' This function allows you to import all csv and xlsx files in the parent directory.
#' @param df Do you want individual dataframes? Defaults to FALSE
#' @keywords csv
#' @export
#' @examples
#' import_all()

import_all <- function(df = FALSE) {
  tempcsv = dir(pattern=".csv", all.files = T)
  tempxlsx = dir(pattern=".xlsx", all.files = T)
  csv <- map(set_names(tempcsv, tempcsv), read_csv)
  xlsx <- map(set_names(tempxlsx, tempxlsx), read_xlsx)
  if (df) {
    list2env(csv, .GlobalEnv)
    list2env(xlsx, .GlobalEnv)
    message("All files are now listed as objects")
  }
  else {
    xlsx <<- xlsx
    csv <<- csv
    message("All files are within their respective list objects")
  }
}
