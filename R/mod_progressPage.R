#' progressPage UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_progressPage_ui <- function(id) {
    ns <- NS(id)
    tagList(
        card_hidden(
            
        ),
        fluidRow(
            col_3(card_testing()),
            col_3(card_testing(), card_testing()),
            col_3(card_testing()),
            col_3(card_testing())
        )
    )
}

#' progressPage Server Functions
#'
#' @noRd
mod_progressPage_server <- function(id) {
    moduleServer(id, function(input, output, session) {
        ns <- session$ns
        session$sendCustomMessage(
            type = "send-notice", message = "Hi there!"
        )
    })
}

## To be copied in the UI
# mod_progressPage_ui("progressPage_1")

## To be copied in the server
# mod_progressPage_server("progressPage_1")
