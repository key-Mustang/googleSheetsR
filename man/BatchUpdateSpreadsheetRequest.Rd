% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sheets_objects.R
\name{BatchUpdateSpreadsheetRequest}
\alias{BatchUpdateSpreadsheetRequest}
\title{BatchUpdateSpreadsheetRequest Object}
\usage{
BatchUpdateSpreadsheetRequest(includeSpreadsheetInResponse = NULL,
  responseRanges = NULL, responseIncludeGridData = NULL, requests = NULL)
}
\arguments{
\item{includeSpreadsheetInResponse}{Determines if the update response should include the spreadsheet}

\item{responseRanges}{Limits the ranges included in the response spreadsheet}

\item{responseIncludeGridData}{True if grid data should be returned}

\item{requests}{A list of updates to apply to the spreadsheet}
}
\value{
BatchUpdateSpreadsheetRequest object
}
\description{
BatchUpdateSpreadsheetRequest Object
}
\details{
Autogenerated via \code{\link[googleAuthR]{gar_create_api_objects}}
The request for updating any aspect of a spreadsheet.
}
\seealso{
Other BatchUpdateSpreadsheetRequest functions: \code{\link{spreadsheets.batchUpdate}}
}
