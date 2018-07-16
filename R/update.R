#' @export
spreadsheets_update <- function(x, spreadsheetId, range){
  spreadsheets.values.update(ValueRange(values = rbind(colnames(x), as.matrix(x))), spreadsheetId, range, valueInputOption = "USER_ENTERED")
}
