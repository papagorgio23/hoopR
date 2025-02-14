#' **Load hoopR NBA play-by-play**
#' @name load_nba_pbp
NULL
#' @title
#' **Load cleaned NBA play-by-play from the data repo**
#' @rdname load_nba_pbp
#' @description helper that loads multiple seasons from the data repo either into memory
#' or writes it into a db using some forwarded arguments in the dots
#' @param seasons A vector of 4-digit years associated with given NBA seasons. (Min: 2002)
#' @param ... Additional arguments passed to an underlying function that writes
#' the season data into a database (used by `update_nba_db()`).
#' @param dbConnection A `DBIConnection` object, as returned by
#' @param tablename The name of the play by play data table within the database
#' @return Returns a tibble
#' @import furrr
#' @export
#' @examples
#' \donttest{
#' load_nba_pbp(2021)
#' }
load_nba_pbp <- function(seasons = most_recent_nba_season(),...,
                         dbConnection = NULL, tablename = NULL) {
  old <- options(list(stringsAsFactors = FALSE, scipen = 999))
  on.exit(options(old))
  dots <- rlang::dots_list(...)

  loader <- rds_from_url

  if (!is.null(dbConnection) && !is.null(tablename)) in_db <- TRUE else in_db <- FALSE

  if(isTRUE(seasons)) seasons <- 2002:most_recent_nba_season()

  stopifnot(is.numeric(seasons),
            seasons >= 2002,
            seasons <= most_recent_nba_season())

  urls <- paste0("https://raw.githubusercontent.com/sportsdataverse/hoopR-data/main/nba/pbp/rds/play_by_play_",seasons,".rds")

  p <- NULL
  if (is_installed("progressr")) p <- progressr::progressor(along = seasons)

  out <- lapply(urls, progressively(loader, p))
  out <- rbindlist_with_attrs(out)
  if (in_db) {
    DBI::dbWriteTable(dbConnection, tablename, out, append = TRUE)
    out <- NULL
  } else {
    class(out) <- c("hoopR_data","tbl_df","tbl","data.table","data.frame")

  }
  out
}

#' **Load hoopR NBA team box scores**
#' @name load_nba_team_box
NULL
#' @title
#' **Load cleaned NBA team box scores from the data repo**
#' @rdname load_nba_team_box
#' @description helper that loads multiple seasons from the data repo either into memory
#' or writes it into a db using some forwarded arguments in the dots
#' @param seasons A vector of 4-digit years associated with given NBA seasons. (Min: 2002)
#' @param ... Additional arguments passed to an underlying function that writes
#' the season data into a database (used by `update_nba_db()`).
#' @param dbConnection A `DBIConnection` object, as returned by
#' @param tablename The name of the play by play data table within the database
#' @return Returns a tibble
#' @import furrr
#' @export
#' @examples
#' \donttest{
#' load_nba_team_box(2021)
#' }
load_nba_team_box <- function(seasons = most_recent_nba_season(), ...,
                              dbConnection = NULL, tablename = NULL) {
  old <- options(list(stringsAsFactors = FALSE, scipen = 999))
  on.exit(options(old))
  dots <- rlang::dots_list(...)

  loader <- rds_from_url
  if (!is.null(dbConnection) && !is.null(tablename)) in_db <- TRUE else in_db <- FALSE

  if(isTRUE(seasons)) seasons <- 2002:most_recent_nba_season()

  stopifnot(is.numeric(seasons),
            seasons >= 2002,
            seasons <= most_recent_nba_season())

  urls <- paste0("https://raw.githubusercontent.com/sportsdataverse/hoopR-data/main/nba/team_box/rds/team_box_",seasons,".rds")

  p <- NULL
  if (is_installed("progressr")) p <- progressr::progressor(along = seasons)

  out <- lapply(urls, progressively(loader, p))
  out <- rbindlist_with_attrs(out)
  class(out) <- c("hoopR_data","tbl_df","tbl","data.table","data.frame")
  out
}


#' **Load hoopR NBA player box scores**
#' @name load_nba_player_box
NULL
#' @title
#' **Load cleaned NBA player box scores from the data repo**
#' @rdname load_nba_player_box
#' @description helper that loads multiple seasons from the data repo either into memory
#' or writes it into a db using some forwarded arguments in the dots
#' @param seasons A vector of 4-digit years associated with given NBA seasons. (Min: 2002)
#' @param ... Additional arguments passed to an underlying function that writes
#' the season data into a database (used by `update_nba_db()`).
#' @param dbConnection A `DBIConnection` object, as returned by
#' @param tablename The name of the play by play data table within the database
#' @return Returns a tibble
#' @import furrr
#' @export
#' @examples
#' \donttest{
#' load_nba_player_box(2021)
#' }
load_nba_player_box <- function(seasons = most_recent_nba_season(), ...,
                                dbConnection = NULL, tablename = NULL) {
  old <- options(list(stringsAsFactors = FALSE, scipen = 999))
  on.exit(options(old))
  dots <- rlang::dots_list(...)
  loader <- rds_from_url
  if (!is.null(dbConnection) && !is.null(tablename)) in_db <- TRUE else in_db <- FALSE

  if(isTRUE(seasons)) seasons <- 2002:most_recent_nba_season()

  stopifnot(is.numeric(seasons),
            seasons >= 2002,
            seasons <= most_recent_nba_season())

  urls <- paste0("https://raw.githubusercontent.com/sportsdataverse/hoopR-data/main/nba/player_box/rds/player_box_",seasons,".rds")

  p <- NULL
  if (is_installed("progressr")) p <- progressr::progressor(along = seasons)

  out <- lapply(urls, progressively(loader, p))
  out <- rbindlist_with_attrs(out)
  if (in_db) {
    DBI::dbWriteTable(dbConnection, tablename, out, append = TRUE)
    out <- NULL
  } else {
    class(out) <- c("hoopR_data","tbl_df","tbl","data.table","data.frame")
  }
  out
}

#' **Load hoopR NBA schedules**
#' @name load_nba_schedule
NULL
#' @title
#' **Load cleaned NBA schedules from the data repo**
#' @rdname load_nba_schedule
#' @description helper that loads multiple seasons from the data repo either into memory
#' or writes it into a db using some forwarded arguments in the dots
#' @param seasons A vector of 4-digit years associated with given NBA seasons. (Min: 2002)
#' @param ... Additional arguments passed to an underlying function that writes
#' the season data into a database (used by `update_nba_db()`).
#' @param dbConnection A `DBIConnection` object, as returned by
#' @param tablename The name of the play by play data table within the database
#' @return Returns a tibble
#' @import furrr
#' @export
#' @examples
#' \donttest{
#' load_nba_schedule(2021)
#' }
load_nba_schedule <- function(seasons = most_recent_nba_season(), ...,
                              dbConnection = NULL, tablename = NULL) {
  old <- options(list(stringsAsFactors = FALSE, scipen = 999))
  on.exit(options(old))
  dots <- rlang::dots_list(...)

  loader <- rds_from_url
  if (!is.null(dbConnection) && !is.null(tablename)) in_db <- TRUE else in_db <- FALSE

  if(isTRUE(seasons)) seasons <- 2002:most_recent_nba_season()

  stopifnot(is.numeric(seasons),
            seasons >= 2002,
            seasons <= most_recent_nba_season())

  urls <- paste0("https://raw.githubusercontent.com/sportsdataverse/hoopR-data/main/nba/schedules/rds/nba_schedule_",seasons,".rds")

  p <- NULL
  if (is_installed("progressr")) p <- progressr::progressor(along = seasons)

  out <- lapply(urls, progressively(loader, p))
  out <- rbindlist_with_attrs(out)
  if (in_db) {
    DBI::dbWriteTable(dbConnection, tablename, out, append = TRUE)
    out <- NULL
  } else {
    class(out) <- c("hoopR_data","tbl_df","tbl","data.table","data.frame")
  }
  out
}

# load games file
load_nba_games <- function(){
  .url <- "https://raw.githubusercontent.com/sportsdataverse/hoopR-data/main/nba/nba_games_in_data_repo.csv"
  dat <- csv_from_url(.url)
  return (dat)
}

#' @name update_nba_db
#' @aliases update_nba_db nba_db nba nba_pbp_db
#' @title
#' **Update or create a hoopR play-by-play database**
#' @description `update_nba_db()` updates or creates a database with `hoopR`
#' play by play data of all completed and available games since 2002.
#'
#' @details This function creates and updates a data table with the name `tblname`
#' within a SQLite database (other drivers via `db_connection`) located in
#' `dbdir` and named `dbname`.
#' The data table combines all play by play data for every available game back
#' to the 2002 season and adds the most recent completed games as soon as they
#' are available for `hoopR`.
#'
#' The argument `force_rebuild` is of hybrid type. It can rebuild the play
#' by play data table either for the whole hoopR era (with `force_rebuild = TRUE`)
#' or just for specified seasons (e.g. `force_rebuild = c(2019, 2020)`).
#' Please note the following behavior:
#' \itemize{
#'  \item{`force_rebuild = TRUE`}{: The data table with the name `tblname`
#'   will be removed completely and rebuilt from scratch. This is helpful when
#'   new columns are added during the Off-Season.}
#'  \item{`force_rebuild = c(2019, 2020)`}{: The data table with the name `tblname`
#'  will be preserved and only rows from the 2019 and 2020 seasons will be
#'  deleted and re-added. This is intended to be used for ongoing seasons because
#'  ESPN's data provider can make changes to the underlying data during the week.}
#' }
#'
#' The parameter `db_connection` is intended for advanced users who want
#' to use other DBI drivers, such as MariaDB, Postgres or odbc. Please note that
#' the arguments `dbdir` and `dbname` are dropped in case a `db_connection`
#' is provided but the argument `tblname` will still be used to write the
#' data table into the database.
#'
#' @param dbdir Directory in which the database is or shall be located
#' @param dbname File name of an existing or desired SQLite database within `dbdir`
#' @param tblname The name of the play by play data table within the database
#' @param force_rebuild Hybrid parameter (logical or numeric) to rebuild parts
#' of or the complete play by play data table within the database (please see details for further information)
#' @param db_connection A `DBIConnection` object, as returned by
#' [DBI::dbConnect()] (please see details for further information)
#' @return Returns a logical value (TRUE/FALSE)
#' @import furrr
#' @export
update_nba_db <- function(dbdir = ".",
                          dbname = "hoopR_db",
                          tblname = "hoopR_nba_pbp",
                          force_rebuild = FALSE,
                          db_connection = NULL) {
  old <- options(list(stringsAsFactors = FALSE, scipen = 999))
  on.exit(options(old))
  # rule_header("Update hoopR Play-by-Play Database")

  if (!is_installed("DBI") | !is_installed("purrr") |
      (!is_installed("RSQLite") & is.null(db_connection))) {
    usethis::ui_stop("{my_time()} | Packages {usethis::ui_value('DBI')}, {usethis::ui_value('RSQLite')} and {usethis::ui_value('purrr')} required for database communication. Please install them.")
  }

  if (any(force_rebuild == "NEW")) {
    usethis::ui_stop("{my_time()} | The argument {usethis::ui_value('force_rebuild = NEW')} is only for internal usage!")
  }

  if (!(is.logical(force_rebuild) | is.numeric(force_rebuild))) {
    usethis::ui_stop("{my_time()} | The argument {usethis::ui_value('force_rebuild')} has to be either logical or numeric!")
  }

  if (!dir.exists(dbdir) & is.null(db_connection)) {
    usethis::ui_oops("{my_time()} | Directory {usethis::ui_path(dbdir)} doesn't exist yet. Try creating...")
    dir.create(dbdir)
  }

  if (is.null(db_connection)) {
    connection <- DBI::dbConnect(RSQLite::SQLite(), glue::glue("{dbdir}/{dbname}"))
  } else {
    connection <- db_connection
  }

  # create db if it doesn't exist or user forces rebuild
  if (!DBI::dbExistsTable(connection, tblname)) {
    build_nba_db(tblname, connection, rebuild = "NEW")
  } else if (DBI::dbExistsTable(connection, tblname) & all(force_rebuild != FALSE)) {
    build_nba_db(tblname, connection, rebuild = force_rebuild)
  }

  # get completed games using Lee's file (thanks Lee!)
  user_message("Checking for missing completed games...", "todo")
  completed_games <- load_nba_games() %>%
    # completed games since 2002, excluding the broken games
    dplyr::filter(.data$season >= 2002) %>%
    dplyr::pull(.data$game_id)

  # function below
  missing <- get_missing_nba_games(completed_games, connection, tblname)

  # rebuild db if number of missing games is too large
  if(length(missing) > 16) {# limit set to >16 to make sure this doesn't get triggered on gameday (e.g. week 17)
    # message("The number of missing games is so large that rebuilding the database is more efficient.")
    build_nba_db(tblname, connection, show_message = FALSE, rebuild = as.numeric(unique(stringr::str_sub(missing, 1, 4))))
    missing <- get_missing_nba_games(completed_games, connection, tblname)
  }

  message_completed("Database update completed", in_builder = TRUE)
  usethis::ui_info("{my_time()} | Path to your db: {usethis::ui_path(DBI::dbGetInfo(connection)$dbname)}")
  if (is.null(db_connection)) DBI::dbDisconnect(connection)
  # rule_footer("DONE")
}

# this is a helper function to build hoopR database from Scratch
build_nba_db <- function(tblname = "hoopR_nba_pbp", db_conn, rebuild = FALSE, show_message = TRUE) {
  old <- options(list(stringsAsFactors = FALSE, scipen = 999))
  on.exit(options(old))
  valid_seasons <- load_nba_games() %>%
    dplyr::filter(.data$season >= 2002) %>%
    dplyr::group_by(.data$season) %>%
    dplyr::summarise() %>%
    dplyr::ungroup()

  if (all(rebuild == TRUE)) {
    usethis::ui_todo("{my_time()} | Purging the complete data table {usethis::ui_value(tblname)} in your connected database...")
    DBI::dbRemoveTable(db_conn, tblname)
    seasons <- valid_seasons %>% dplyr::pull("season")
    usethis::ui_todo("{my_time()} | Starting download of {length(seasons)} seasons between {min(seasons)} and {max(seasons)}...")
  } else if (is.numeric(rebuild) & all(rebuild %in% valid_seasons$season)) {
    string <- paste0(rebuild, collapse = ", ")
    if (show_message){usethis::ui_todo("{my_time()} | Purging {string} season(s) from the data table {usethis::ui_value(tblname)} in your connected database...")}
    DBI::dbExecute(db_conn, glue::glue_sql("DELETE FROM {`tblname`} WHERE season IN ({vals*})", vals = rebuild, .con = db_conn))
    seasons <- valid_seasons %>% dplyr::filter(.data$season %in% rebuild) %>% dplyr::pull("season")
    usethis::ui_todo("{my_time()} | Starting download of the {string} season(s)...")
  } else if (all(rebuild == "NEW")) {
    usethis::ui_info("{my_time()} | Can't find the data table {usethis::ui_value(tblname)} in your database. Will load the play by play data from scratch.")
    seasons <- valid_seasons %>% dplyr::pull("season")
    usethis::ui_todo("{my_time()} | Starting download of {length(seasons)} seasons between {min(seasons)} and {max(seasons)}...")
  } else {
    seasons <- NULL
    usethis::ui_oops("{my_time()} | At least one invalid value passed to argument {usethis::ui_code('force_rebuild')}. Please try again with valid input.")
  }

  if (!is.null(seasons)) {
    # this function lives in R/utils.R
    load_nba_pbp(seasons, dbConnection = db_conn, tablename = tblname)
  }
}

# this is a helper function to check a list of completed games
# against the games that exist in a database connection
get_missing_nba_games <- function(completed_games, dbConnection, tablename) {
  db_ids <- dplyr::tbl(dbConnection, tablename) %>%
    dplyr::select("game_id") %>%
    dplyr::distinct() %>%
    dplyr::collect() %>%
    dplyr::pull("game_id")

  need_scrape <- completed_games[!completed_games %in% db_ids]

  usethis::ui_info("{my_time()} | You have {length(db_ids)} games and are missing {length(need_scrape)}.")
  return(need_scrape)
}
