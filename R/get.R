#' Gets values in a range of a spreadsheet.The caller must specify the spreadsheet ID, range.
#'
#' @seealso \href{https://developers.google.com/sheets/}{Google Documentation}
#'
#' @param data_type The expected data type of the output
#' @param spreadsheetId The ID of the spreadsheet to get
#' @param range The A1 notation of the values to get
#' @export
spreadsheets_get <- function(data_type = "data.frame", spreadsheetId, range){
  response <- spreadsheets.values.get(spreadsheetId, range)
  if(data_type == "data.frame"){
    df <- as.data.frame(response$values[-1,])
    colnames(df) <- response$values[1,]
  }else{
    df <- response
  }

  df
}


