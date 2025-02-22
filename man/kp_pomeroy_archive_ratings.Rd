% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kp_historical_tables.R
\name{kp_pomeroy_archive_ratings}
\alias{kp_pomeroy_archive_ratings}
\title{\strong{Get KenPom's ratings archive pages}}
\usage{
kp_pomeroy_archive_ratings(date)
}
\arguments{
\item{date}{Date (YYYY-MM-DD)}
}
\value{
A data frame with 22 columns:
\describe{
\item{\code{AdjEM.Rk}}{double.}
\item{\code{Team}}{character.}
\item{\code{Conf}}{character.}
\item{\code{AdjEM}}{double.}
\item{\code{AdjO}}{double.}
\item{\code{AdjO.Rk}}{double.}
\item{\code{AdjD}}{double.}
\item{\code{AdjD.Rk}}{double.}
\item{\code{AdjT}}{double.}
\item{\code{AdjT.Rk}}{double.}
\item{\code{Final.Rk}}{double.}
\item{\code{Final.AdjEM}}{double.}
\item{\code{Final.AdjO}}{double.}
\item{\code{Final.AdjO.Rk}}{double.}
\item{\code{Final.AdjD}}{double.}
\item{\code{Final.AdjD.Rk}}{double.}
\item{\code{Final.AdjT}}{double.}
\item{\code{Final.AdjT.Rk}}{double.}
\item{\code{Rk.Chg}}{double.}
\item{\code{EM.Chg}}{double.}
\item{\code{AdjT.Chg}}{double.}
\item{\code{NCAA_Seed}}{double.}
}
}
\description{
\strong{Get KenPom's ratings archive pages}
}
\examples{
\donttest{
  try(kp_pomeroy_archive_ratings(date='2018-11-22'))
}
}
\keyword{Archive}
\keyword{Ratings}
