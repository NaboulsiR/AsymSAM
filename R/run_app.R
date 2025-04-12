#' Run the AsymSAM Shiny App
#'
#' This function launches the AsymSAM interactive simulation app.
#'
#' @export
run_app <- function() {
  app_dir <- system.file("app", package = "AsymSAMpkg")
  if (app_dir == "") {
    stop("Could not find Shiny app directory. Try re-installing the package.", call. = FALSE)
  }

  shiny::runApp(app_dir, display.mode = "normal")
}
