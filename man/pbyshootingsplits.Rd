% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nba_stats_player_dash.R
\name{pbyshootingsplits}
\alias{pbyshootingsplits}
\alias{nba_playerdashboardbyshootingsplits}
\title{\strong{Get NBA Stats API Player Dashboard by Shooting Splits}}
\usage{
nba_playerdashboardbyshootingsplits(
  date_from = "",
  date_to = "",
  game_segment = "",
  last_n_games = 0,
  league_id = "00",
  location = "",
  measure_type = "Base",
  month = 0,
  opponent_team_id = 0,
  outcome = "",
  po_round = "",
  pace_adjust = "N",
  per_mode = "Totals",
  period = 0,
  player_id = "2544",
  plus_minus = "N",
  rank = "N",
  season = "2020-21",
  season_segment = "",
  season_type = "Regular Season",
  shot_clock_range = "",
  vs_conference = "",
  vs_division = ""
)
}
\arguments{
\item{date_from}{date_from}

\item{date_to}{date_to}

\item{game_segment}{game_segment}

\item{last_n_games}{last_n_games}

\item{league_id}{league_id}

\item{location}{location}

\item{measure_type}{measure_type}

\item{month}{month}

\item{opponent_team_id}{opponent_team_id}

\item{outcome}{outcome}

\item{po_round}{po_round}

\item{pace_adjust}{pace_adjust}

\item{per_mode}{per_mode}

\item{period}{period}

\item{player_id}{player_id}

\item{plus_minus}{plus_minus}

\item{rank}{rank}

\item{season}{season}

\item{season_segment}{season_segment}

\item{season_type}{season_type}

\item{shot_clock_range}{shot_clock_range}

\item{vs_conference}{vs_conference}

\item{vs_division}{vs_division}
}
\value{
Return a named list of data frames: AssistedBy, AssitedShotPlayerDashboard, OverallPlayerDashboard,
Shot5FTPlayerDashboard, Shot8FTPlayerDashboard, ShotAreaPlayerDashboard, ShotTypePlayerDashboard, ShotTypeSummaryPlayerDashboard
}
\description{
\strong{Get NBA Stats API Player Dashboard by Shooting Splits}

\strong{Get NBA Stats API Player Dashboard by Shooting Splits}
}
\author{
Saiem Gilani
}
