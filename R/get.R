#' Gets values in a range of a spreadsheet.The caller must specify the spreadsheet ID, range.
#'
#' @seealso \href{https://developers.google.com/sheets/}{Google Documentation}
#'
#' @param data_type The expected data type of the output
#' @param tabName The name of the spreadsheet tab
#' @param spreadsheetId The ID of the spreadsheet to get
#' @param range The A1 notation of the values to get
#' @export
spreadsheets_get <- function(data_type = "data.frame", spreadsheetId, tabName = "", range = "A1"){
  response <- spreadsheets.values.get(spreadsheetId, paste0(ifelse(tabName == "", "", paste0(tabName, "!")),range))
  if(data_type == "data.frame"){
    df <- as.data.frame(response$values[-1,])
    colnames(df) <- response$values[1,]
  }else{
    df <- response
  }

  df
}


