% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rtable.R
\name{rcell}
\alias{rcell}
\title{Reporting Table Cell}
\usage{
rcell(x, format = NULL, colspan = 1)
}
\arguments{
\item{x}{data object for the \code{rcell} object. Note that if the data
object has attributes then it needs to be encasultated in a list as 
\code{rcell} adds/modifies the attributes.}

\item{format}{a valid format string or a format function for
\code{\link{rcell}}s. To get a list of all valid format strings use
\code{\link{list_rcell_format_labels}}. If format is \code{NULL} then the elements
of a cell get pasted separated by a comma.}

\item{colspan}{positive integer, number of columns that the cell should span.}
}
\value{
an object of class \code{rcell}
}
\description{
\code{\link{rcell}}s compose an \code{\link{rtable}}. An \code{rcell}
contains the encapsulated data object, a format and column span attributes.
}
