\docType{class}
\name{mfcluster-class}
\alias{mfcluster-class}
\title{Class mfcluster}
\description{
  Class mfcluster is created from output of function MFClus
}
\section{Fields}{
  \itemize{ \item{\code{All: }}{vector with elements:
  \itemize{ \item{\emph{w }}{Wilcoxon statistic}
  \item{\emph{u }}{Mann-Whitney statistic} \item{\emph{r
  }}{mean ridit} \item{\emph{n1 }}{size of group 1}
  \item{\emph{n2 }}{size of group 2} \item{\emph{mf
  }}{mitigated fraction} }} \item{\code{byCluster: }}{As
  for All, by clusters} \item{\code{excludedClusters:
  }}{character vector naming clusters excluded because of
  missing treatment} \item{\code{call: }}{the call to
  \code{MFClus}} \item{\code{compare: }}{character vector
  naming groups compared} }
}
\author{
  Marie Vendettuoli
  \email{marie.c.vendettuoli@aphis.usda.gov}
}
\seealso{
  \code{\link{MFClus}}
}
\keyword{documentation}

