% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotSurface.R
\name{plotSurface}
\alias{plotSurface}
\title{Plot Performance Surfaces over a Discrete Mesh of Gap Structures}
\usage{
plotSurface(
  d = 1:length(agObject),
  m = names(agObject[[1]][[1]][[1]]),
  metric,
  agObject,
  layer_type = "method",
  f = "median",
  highlight = NULL,
  highlight_color = "#FF0000",
  colors = c("#FF8633", "#FFAF33", "#FFD133", "#FFEC33", "#D7FF33", "#96FF33")
)
}
\arguments{
\item{d}{\code{numeric}; A vector to indicate datasets of interest}

\item{m}{\code{character}; A vector of interpolation methods of interest (maximum of 5)}

\item{metric}{\code{character}; An element describing the performance metric of interest}

\item{agObject}{\code{agObject}; An object containing the aggregated performance metrics (result of \code{agObject()})}

\item{layer_type}{\code{character}; How to layer the surfaces (by "method" or by "dataset")}

\item{f}{\code{character}; The statistic of interest defining the surface \code{f(p,g)}. Possible choices are listed in \code{?aggregate_pf}.}

\item{highlight}{\code{character/numeric}; A single method (if \code{layer_type = "method"}) or dataset (if \code{layer_type = "dataset"}) to highlight.}

\item{highlight_color}{\code{character}; An HTML color of format \code{"#xxxxxx"} to apply to \code{highlight}}

\item{colors}{\code{character}; A vector of the desired color palette, with entries in HTML format (\code{"#xxxxxx"})}
}
\description{
Subroutine of \code{multiSurface()}. Function to generate surface plots (using the \code{plotly} package) to visualize changes in the performance metrics of interest
as gap structure changes. 
\itemize{
\item The x-axis represents \code{p}, the \strong{proportion of missing data}.\cr 
\item The y-axis represents \code{g}, the \strong{gap width}.\cr
\item The z-axis represents \code{f(p,g)}, the \strong{value of the performance metric} of interest, according to some statistic.
}
}
