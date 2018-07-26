library(googleAuthR)
library(googleSheetsR)
library(tidyverse)

gar_auth()

spreadsheetId <- YOUR_SPREADSHEET_ID
# Get values
spreadsheets_get(data_type = "data.frame", spreadsheetId, "B3:D8")
# Update Values
spreadsheets_update(data.frame(a=c(1,2,3), b = c(4,5,6)), spreadsheetId, "B2")
