% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kp_misc_stats.R
\name{kp_game_attrs}
\alias{kp_game_attrs}
\title{\strong{Get Game Attributes}}
\usage{
kp_game_attrs(year = most_recent_mbb_season(), attr = "Excitement")
}
\arguments{
\item{year}{Year of data to pull}

\item{attr}{Game Attribute, valid values include: \cr
'Excitement', 'Tension','Dominance','MinWp','FanMatch',\cr
'Upsets','Busts','Comeback','Window'}
}
\value{
Returns a tibble with game attributes
}
\description{
\strong{Get Game Attributes}
}
\examples{
\donttest{
  try(kp_game_attrs(year=2021, attr = "Excitement"))
}
}
\keyword{Game}
