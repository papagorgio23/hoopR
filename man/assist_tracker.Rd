% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nba_stats_leaders.R
\name{assist_tracker}
\alias{assist_tracker}
\alias{nba_assisttracker}
\title{\strong{Get NBA Stats API Assist Tracker}}
\usage{
nba_assisttracker(
  league_id = "00",
  per_mode = "PerGame",
  season = "2020-21",
  season_type = "Regular Season"
)
}
\arguments{
\item{league_id}{League - default: '00'. Other options include '10': WNBA, '20': G-League}

\item{per_mode}{Per Mode - PerGame, Totals}

\item{season}{Season - format 2020-21}

\item{season_type}{Season Type - Regular Season, Playoffs, All-Star}
}
\value{
Returns a named list of data frames: AssistTracker
}
\description{
\strong{Get NBA Stats API Assist Tracker}

\strong{Get NBA Stats API Assist Tracker}
}
\author{
Saiem Gilani
}
