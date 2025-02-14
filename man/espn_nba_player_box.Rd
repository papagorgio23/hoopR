% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/espn_nba_data.R
\name{espn_nba_player_box}
\alias{espn_nba_player_box}
\title{\strong{Get ESPN NBA player box scores}}
\usage{
espn_nba_player_box(game_id)
}
\arguments{
\item{game_id}{Game ID}
}
\value{
A player boxscore data frame
}
\description{
\strong{Get ESPN NBA player box scores}
}
\examples{
\donttest{
  try(espn_nba_player_box(game_id = 401283399))
}

}
\author{
Saiem Gilani
}
\keyword{Box}
\keyword{NBA}
\keyword{Player}
