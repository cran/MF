\name{MFBoot}
\alias{MFBoot}
\title{Bootstrap MF CI}
\usage{
  MFBoot(formula, data, compare = c("con", "vac"), b = 100,
    B = 100, alpha = 0.05, hpd = TRUE, bca = FALSE,
    return.boot = FALSE, trace.it = FALSE)
}
\arguments{
  \item{formula}{Formula of the form \code{y ~ x}, where y
  is a continuous response and x is a factor with two
  levels}

  \item{data}{Data frame}

  \item{compare}{Text vector stating the factor levels -
  \code{compare[1]} is the control or reference group to
  which \code{compare[2]} is compared}

  \item{b}{Number of bootstrap samples to take with each
  cycle}

  \item{B}{Number of cycles, giving the total number of
  samples = B * b}

  \item{alpha}{Complement of the confidence level}

  \item{hpd}{Estimate highest density intervals? Default
  TRUE.}

  \item{bca}{Estimate BCa intervals? Default FALSE.}

  \item{return.boot}{Save the bootstrap sample of the MF
  statistic? Default FALSE.}

  \item{trace.it}{Verbose tracking of the cycles? Default
  FALSE.}
}
\value{
  a \code{\link{mfboot-class}} data object
}
\description{
  Estimates bootstrap confidence intervals for the
  mitigated fraction.
}
\details{
  Resamples the data and produces bootstrap confidence
  intervals. Equal tailed intervals are estimated by the
  percentile method. Highest density intervals are
  estimated by selecting the shortest of all possible
  intervals. For BCa intervals, see Efron and Tibshirani
  section 14.3.
}
\examples{
MFBoot(lesion~group, calflung)

# 10000 bootstrap samples
# 95\% confidence interval
#
# Comparing vac to con
#                 observed median  lower  upper
# Equal Tailed        0.44 0.4464 0.1360 0.7056
# Highest Density     0.44 0.4464 0.1456 0.7088
}
\author{
  David Siev \email{david.siev@aphis.usda.gov}
}
\references{
  Siev D. (2005). An estimator of intervention effect on
  disease severity. \emph{Journal of Modern Applied
  Statistical Methods.} \bold{4:500--508} \cr \cr Efron B,
  Tibshirani RJ. \emph{An Introduction to the Bootstrap.}
  Chapman and Hall, New York, 1993.
}
\seealso{
  \code{\link{mfboot-class}}
}

