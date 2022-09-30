#' secure UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @importFrom bslib nav nav_spacer
mod_secure_ui <- function(id) {
    ns <- NS(id)
    tagList(
        bslib::page_navbar(
            id = "page",
            bg = "#2c3e50",
            title = "app test",
            theme = bslib::bs_theme(
                version = 5,
                bootswatch = "sandstone",
                "body-bg" = "#f1ecd9",
                "card-bg" = "#fff9e4",
                # "card-border-color" = "rgba(175, 167, 155 / 75%)"
            ),
            bslib::nav_spacer(),
            bslib::nav(
                title = "Reporte", 
                icon= icon("list-check"),
                mod_progressPage_ui(ns("progressPage_1"))
            ),
            bslib::nav(
              title = icon("gear"),
              selectInput("selecting", "selecting", head(letters))
            ),
        )
    )
}

#' secure Server Functions
#'
#' @noRd
mod_secure_server <- function(id) {
    moduleServer(id, function(input, output, session) {
        ns <- session$ns
        
        mod_progressPage_server("progressPage_1")
    })
}

## To be copied in the UI
# mod_secure_ui("secure_1")

## To be copied in the server
# mod_secure_server("secure_1")
