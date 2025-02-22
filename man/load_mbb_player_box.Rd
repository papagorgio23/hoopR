% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mbb_pbp.R
\name{load_mbb_player_box}
\alias{load_mbb_player_box}
\title{\strong{Load hoopR men's college basketball player box scores}}
\usage{
load_mbb_player_box(
  seasons = most_recent_mbb_season(),
  ...,
  dbConnection = NULL,
  tablename = NULL
)
}
\arguments{
\item{seasons}{A vector of 4-digit years associated with given men's college basketball seasons. (Min: 2003)}

\item{...}{Additional arguments passed to an underlying function that writes
the season data into a database (used by \code{update_mbb_db()}).}

\item{dbConnection}{A \code{DBIConnection} object, as returned by}

\item{tablename}{The name of the play by play data table within the database}
}
\value{
Returns a tibble
}
\description{
helper that loads multiple seasons from the data repo either into memory
or writes it into a db using some forwarded arguments in the dots
}
\examples{
\donttest{
load_mbb_player_box(2021)
}
}
