% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/XY2Area.R
\name{XYdf2Area}
\alias{XYdf2Area}
\title{XYdf2Area}
\usage{
XYdf2Area(
  df,
  X,
  Y,
  InRef = "none",
  ShiftPeakTo = "none",
  PkRange,
  GivePlots = T,
  ncolplot = 5
)
}
\arguments{
\item{df}{Data.frame with the coordinate numbers as two columns.}

\item{X}{Numeric. The horizontal axis coordicates.}

\item{Y}{Numeric. The vertical axis coordicates.}

\item{InRef}{Character. Internal reference. Default - "none". If InRef is specify, the InRef should be included in the PkRange. Also, the relative area for each molecule will be reported.}

\item{ShiftPeakTo}{A vecter containing the name of a molecule and a number. The spectrum will be shifted horizontally so that the horizontal coordinate of the specified molecule is the number. e.g. c("TSP", 0). Default - "none".}

\item{PkRange}{A data.frame which shows the peak range of each molecule.}

\item{GivePlots}{Logical. If T, a plot will be generated and store in the outputlist[\link{2}]. Default - T.}

\item{ncolplot}{Numeric. Number of figures in the output plot. Default - 5.}
}
\value{
This function returns a list containing a dataframe of Abs/Rel Area values, and a plot summarising the integral details
}
\description{
This function converts coordinates (X and Y) of a spectrum to the Abs/Rel area for each molecule.
A dataframe (PkRange augment) showing the peak range is required as an input. Please see the examples section to generate your PkRange df.
}
\examples{
The PkRange data.frame should have 2 columns for each molecule, with form of, e.g. Formate_from, Formate_to. The first row should be the
horizontal axis coordinate of the _from and _to.

Here is a sample:

PkRange <- setNames(data.frame(matrix(ncol = 26, nrow = 1)), paste0(rep(c("TSP","Formate","Acetate",
                                                                      "Propionate","Butyrate","i-Butyrate",
                                                                      "Valerate","i-Valerate","Methanol",
                                                                      "Ethanol","Lactate","Succinate",
                                                                      "4-Methylvalerate"), each = 2), c("_from","_to")))
PkRange[1,] <- c(-0.01,	0.01,	8.235, 8.25,	2.07,	2.1,
                 1.056,	1.1,	1.6, 1.642,	2.561,	2.64,
                 1.29,	1.36,	2.238,	2.27,	3.333,	3.36,
                 1.155,	1.19,	1.402,	1.43,	2.664,	2.675,
                 0.86,	0.895)

}
