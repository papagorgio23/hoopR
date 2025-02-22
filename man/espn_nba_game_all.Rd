% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/espn_nba_data.R
\name{espn_nba_game_all}
\alias{espn_nba_game_all}
\title{\strong{Get ESPN NBA game data (Pbp, Team and Player Box)}}
\usage{
espn_nba_game_all(game_id)
}
\arguments{
\item{game_id}{Game ID}
}
\value{
A named list of data frames: Plays, Team, Player
}
\description{
\strong{Get ESPN NBA game data (Pbp, Team and Player Box)}
}
\examples{
\donttest{
  try(espn_nba_game_all(game_id = 401283399))
}

}
\author{
Saiem Gilani
}
\keyword{Game}
\keyword{NBA}
