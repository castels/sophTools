% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregate_pf.R
\name{aggregate_pf}
\alias{aggregate_pf}
\title{Aggregate the Performance Matrices of Multiple Interpolations}
\usage{
aggregate_pf(pf, custom = NULL)
}
\arguments{
\item{pf}{\code{pf}; A nested list of dimension D x M x P x G x K (result of \code{performance()}), where the terminal node is a performance matrix.}

\item{custom}{\code{character}; A vector of names of user-defined functions used to perform aggregation with custom statistics (see details)}
}
\description{
Function to aggregate the set of performance matrices, by criterion, using sample statistics of the sampling distribution across K. Resulting object is of class \code{'aggregate_pf'}.
}
\details{
The base statistics provided in the output are as follows:
\itemize{
\item \code{(mean)}; mean
\item \code{(sd)}; standard deviation 
\item \code{(q0)}; minimum (0\% quantile)
\item \code{(q2.5)}; 2.5\% quantile
\item \code{(q25)}; 25\% quantile
\item \code{(median)}; median (50\% quantile)
\item \code{(q75)}; 75\% quantile
\item \code{(q97.5)}; 97.5\% quantile
\item \code{(q100)}; maximum (100\% quantile)
\item \code{(iqr)}; IQR (75\% quantile - 25\% quantile)
\item \code{(skewness)}; skewness
\item \code{(dip)}; p-value of dip test for unimodality (see \code{?dip} for details)
}

Users can define and pass-in their own custom statistics used for the aggregation of the performance metrics, but must adhere to the following rules:
\itemize{
  \item Inputs are limited to *ONLY* single numeric vectors \cr
  \item Outputs must be a single numeric value
  }
}
\examples{

 # User-defined functions to calculate a custom aggregation statistic (see Details for rules)
 
 my_stat1 <- function(x){
  
  val <- sum(x)/length(x) + 34
  
  return(val) # return value must be a single numeric element
  
  }
  
 my_metric2 <- function(x){
 
  val <- (sum(x)-min(x))/6
 
  return(val) # return value must be a single numeric element
 
 } 
 
 # Implementing in aggregate()
 
 aggregate(pf = pf, custom = c("my_stat1", "my_stat2"))
     
}
