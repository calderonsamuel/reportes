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
            title = "app test",
            theme = bslib::bs_theme(version = 5),
            bslib::nav_spacer(),
            bslib::nav(
                title = "Reporte", 
                icon= icon("list-check"),
                fluidRow(
                    col_3(card_testing()),
                    col_3(card_testing(), card_testing()),
                    col_3(card_testing()),
                    col_3(card_testing())
                )
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

    })
}

## To be copied in the UI
# mod_secure_ui("secure_1")

## To be copied in the server
# mod_secure_server("secure_1")
