% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anomaly.R
\name{monthlyAnomaly}
\alias{monthlyAnomaly}
\title{Caclulate monthly anomaly values}
\usage{
monthlyAnomaly(d, climatologyYears, var, normalizedAnomaly = TRUE)
}
\arguments{
\item{d}{a data.frame containing at least a column named year, month, and one other variable}

\item{climatologyYears}{a vector of length two indicating the range of years
to calculate the climatology.}

\item{var}{name of variable of which anomaly should be calculated (present in `d``)}

\item{normalizedAnomaly}{a logical value indicating whether or not to also calculated the
normalized anomaly. Default is \code{TRUE}.}
}
\value{
a data.frame containing columns \code{year}, \code{month}, \code{anomaly}, and \code{normalizedAnomaly}
if desired.
}
\description{
This function calculates the monthly anomaly.
}
\seealso{
Other anomaly: 
\code{\link{annualAnomaly}()},
\code{\link{annualNormalizedAnomaly}()},
\code{\link{monthlyClimatology}()},
\code{\link{monthlyNormalizedAnomaly}()},
\code{\link{monthlyStandardDeviation}()}
}
\author{
Chantelle Layton, Emily Chisholm
}
\concept{anomaly}
