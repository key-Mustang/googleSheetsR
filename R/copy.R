#' Copy a spreadsheet.
#'
#' @seealso \href{https://developers.google.com/sheets/}{Google Documentation}
#'
#' @param des_name The name of the new spreadsheet
#' @param src_spreadsheetId The ID of the original spreadsheet to copy
#' @export
spreadsheets_copy_file <- function(des_name, src_spreadsheetId){
  new_file <- files.copy(File(name=des_name), src_spreadsheetId)
  message(paste0("Copy from ", src_spreadsheetId, " to new spreadsheet ", des_name))
  new_file[c("id","name")]
}
