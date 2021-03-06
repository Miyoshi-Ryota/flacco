% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/listAvailableFeatures.R
\name{listAvailableFeatureSets}
\alias{listAvailableFeatureSets}
\title{List Available Feature Sets}
\usage{
listAvailableFeatureSets(
  subset,
  allow.cellmapping,
  allow.additional_costs,
  blacklist
)
}
\arguments{
\item{subset}{[\code{\link{character}}]\cr
Vector of feature sets, which should be considered. If not defined, all
features will be considered.}

\item{allow.cellmapping}{[\code{\link{logical}(1)}]\cr
Should (general) cell mapping features be considered as well? The default is
\code{TRUE}.}

\item{allow.additional_costs}{[\code{\link{logical}(1)}]\cr
Should feature sets be considered, which require additional function
evaluations? The default is \code{TRUE}.}

\item{blacklist}{[\code{\link{character}}]\cr
Vector of feature sets, which should not be considered. The default is
\code{NULL}.}
}
\value{
[\code{\link{character}}].\cr
Feature sets, which could be computed - based on the provided input.
}
\description{
Lists all available feature sets w.r.t. certain restrictions.
}
\examples{
sets = listAvailableFeatureSets()
}
