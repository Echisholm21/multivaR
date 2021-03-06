% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anomaly.R
\name{calculate_anomaly}
\alias{calculate_anomaly}
\title{Anomaly function wrapper}
\usage{
calculate_anomaly(data, anomalyType, climatologyYears, var, normalizedAnomaly)
}
\arguments{
\item{data}{A data frame from \code{azmpdata}}

\item{anomalyType}{A character string, options 'annual', 'monthly' or
'seasonal' depending on the type of anomaly the user wishes to calculate}

\item{climatologyYears}{a Vector of two numeric values determining the start
and end years of the period which will be used to calculate a climatology}

\item{var}{Required only if using monthly or aggregate annual anomaly
calculations, character string describing the variable for which anomaly
should be calculated}

\item{normalizedAnomaly}{Required only if using monthly or aggregate annual
anomaly calculations, logical indicating whether or not to normalize
anomaly calculations}
}
\description{
Directs data to appropriate anomaly calculation function within multivaR
based on temporal and regional scales of data and metric type. All functions
are desinged specifically to handle data from the \code{azmpdata} package. If a
user wanted to modify these functions to use with external data sources,
extrame caution should be taken.
}
\details{
There are multiple anomaly function available within multivaR and each should
be used in a different context with different data metrics.
The functions wrapped within this function are as follows
\itemize{
\item Annual Anomaly caluclation with Annual climatology
\itemize{
\item This is used in biogeochemical metric anomaly caluclations on a
regional scale for annual data
}
\item Monthly anomaly with monthly climatology
\itemize{
\item This is used for some physical metrics using occupation temporal scale
data or monthly data
}
\item Annual anomaly from monthly climatology
\itemize{
\item This is used for some physical metrics, it first calculates a monthly
anomaly and monthly climatology then aggregates the monthly data points
by year to calculate annual anomalies
}
\item Seasonal anomaly with seasonal climatology
\itemize{
\item Used in some biolgoical metrics such as zooplankton biomass and
calanus finmarchicus abundance, requires some extra metadata to confirm
seasonal distinctions (not yet implemented)
}
}
}
