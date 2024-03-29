% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PCoAtoBiplot.R
\name{PCoAtoBiplot}
\alias{PCoAtoBiplot}
\title{PCoAtoBiplot}
\usage{
PCoAtoBiplot(NormDf, method = "bray")
}
\arguments{
\item{NormDf}{a normalised data.frame. Sample names as rownames and variables as colnames.}

\item{method}{PCoA method. This is based on vegdist function in vegan package. Please see help(vegdist). Default - "bray".}
}
\value{
Returns a list. See description
}
\description{
This function returns a list containing elements required for PCoA biplot. list[\link{1}] is the PCoA axis data. list[\link{2}] is a vector including the PCoA axis percentage.
list [\link{3}] is the standardised covariance matrix required for the biplot arrows
}
\examples{
None
}
