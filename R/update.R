#' Sets values in a range of a spreadsheet.The caller must specify the spreadsheet ID, range.
#'
#' @seealso \href{https://developers.google.com/sheets/}{Google Documentation}
#'
#' @param x The value to set in the spreadsheet
#' @param spreadsheetId The ID of the spreadsheet to update
#' @param range The A1 notation of the values to update
#' @export
spreadsheets_update <- function(x, spreadsheetId, spreadsheetTabName = NULL, range = "A1"){

  update_value <- x

  # Add colnames if it is data frame
  if(is.data.frame(x)){
    update_value <- rbind(colnames(x), as.matrix(x))
  }

  if(!is.null(spreadsheetTabName)){
    range <- paste0(spreadsheetTabName, "!",range)
  }

  spreadsheets.values.update(ValueRange(values = update_value), spreadsheetId, range, valueInputOption = "USER_ENTERED")
}
