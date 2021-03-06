% Generated by roxygen2 (4.0.2): do not edit by hand
\name{nstrata}
\alias{nstrata}
\title{Sample size calculation for strata}
\usage{
nstrata(n, wh, sh = NULL, ch = NULL, method = "proportional")
}
\arguments{
\item{n:}{Total sample size.}

\item{wh:}{Data object with the proportions for each strata.}

\item{sh:}{Data object with the standard deviations for each strata.}

\item{ch:}{Data object with the cost for each strata.}

\item{method:}{Method of sample allocation to strata("proportional", "optimal", "neyman")}
}
\value{
Data object with the sample size for each strata.
}
\description{
Assign sample size to strata.Supports three methods(proportional,optimal and Neyman)
}
\references{
Based in the slides of Sampling Topics course.University of Costa Rica.
}

