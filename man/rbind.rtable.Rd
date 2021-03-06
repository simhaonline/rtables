% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rbind.R
\name{rbind.rtable}
\alias{rbind.rtable}
\title{Stack rtable and rrow objects}
\usage{
\method{rbind}{rtable}(..., gap = 0)
}
\arguments{
\item{...}{\code{\link{rtable}} or length 0 \code{\link{rcell}} objects, the first object must be an
\code{\link{rtable}} object}

\item{gap}{number of empty rows to add between tables}
}
\value{
an \code{\link{rtable}} object
}
\description{
Note that the columns order are not mached by the header: the first table
header is taken as the reference.
}
\examples{

mtbl <- rtable(
  header = rheader(
    rrow(row.name = NULL, rcell("Sepal.Length", colspan = 2), rcell("Petal.Length", colspan=2)),
    rrow(NULL, "mean", "median", "mean", "median")
  ),
  rrow(
    row.name = "All Species",
    mean(iris$Sepal.Length), median(iris$Sepal.Length),
    mean(iris$Petal.Length), median(iris$Petal.Length),
    format = "xx.xx"
  )
)

mtbl2 <- with(subset(iris, Species == 'setosa'), rtable(
  header = rheader(
    rrow(row.name = NULL, rcell("Sepal.Length", colspan = 2), rcell("Petal.Length", colspan=2)),
    rrow(NULL, "mean", "median", "mean", "median")
  ),
  rrow(
    row.name = "Setosa",
    mean(Sepal.Length), median(Sepal.Length),
    mean(Petal.Length), median(Petal.Length),
    format = "xx.xx"
  )
))

rbind(mtbl, mtbl2)

rbind(mtbl, rrow(), mtbl2)

rbind(mtbl, rrow("aaa"), indent(mtbl2))

rbind(mtbl, mtbl2, gap = 1)

rbind(mtbl, mtbl2, gap = 2)

}
