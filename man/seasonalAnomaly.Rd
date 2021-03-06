% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anomaly.R
\name{seasonalAnomaly}
\alias{seasonalAnomaly}
\title{Calculate seasonal anomalies}
\usage{
seasonalAnomaly(data, climatologyYears, warnings = TRUE)
}
\arguments{
\item{data}{A data frame from \code{azmpdata} containing seasonal average data}

\item{climatologyYears}{A vector of two numbers indicating the start and end of the climatology period used to calculate anomalies}

\item{warnings}{Logical determines whether warning messages are output}
}
\value{
a data frame with anomaly values
}
\description{
Anomaly calculation for seasonal data from \code{azmpdata}
}
\details{
Data frames should include a column with regional scale names, the column
should be named \code{transect}, \code{station}, or \code{area}, else the function will not
be able to detrmine the regional scale. The data frame should also have
columns \code{variable}, \code{value}, \code{season}, and \code{year}.
}
\author{
Benoit Casault & Emily Chisholm
}
