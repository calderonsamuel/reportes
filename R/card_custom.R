#' Tarjetas personalizadas
#'
#' @return Un HTML tag de tarjeta (card)
#' @importFrom bslib card card_header
#' @export
card_testing <- function() {
    ids <- lapply(1:3, \(x) sample(letters, 4) |> paste0(collapse = ""))
    bslib::card(
        card_header(
            tags$span(
                icon("eye"),
                "Título de tarjeta"
            )
        ),
        lapply(ids, card_task)
    )
}

card_hidden <- function() {
    id <- sample(letters, 4) |> paste0(collapse = "")
    bslib::card(
        card_header(
            tags$span(
                icon("plus"),
                "Título de sección de estado"
            )
        ),
        bslib::input_switch(id = id, label = id)
    ) |> 
        shinyjs::hidden()
}

card_task <- function(id = NULL) {
    bslib::card(
        card_header(
            tags$a(
                class = "btn card-header-toggle",
                style = "width:100%; padding: 0;",
                id = id,
                tags$div(
                    style = "display: grid; grid-template-columns: auto auto; gap: 5px;",
                    tags$div(tags$p("Descripción de tarea", style = "margin-bottom: 0rem; text-align: left;")),
                    tags$div(tags$p(icon("bars"), style = "margin-bottom: 0rem; text-align: right;"))
                ),
            )
        ),
        bslib::card_body(
            gap = 0,
            class = "card-bodyid",
            style = "display: none !important;",
            inline_description("user", "Nombre de encargado"),
            inline_description("book-reader", "Nombre de responsable"),
            inline_description("calendar-day", "31/12/2022"),
            inline_description("project-diagram", "Proceso al que pertenece")
        ),
    )
}

inline_description <- function(icon_name, label) {
    tags$div(
        style = "display: grid; grid-template-columns: 20px auto; gap: 5px; width: 100%;",
        tags$div(tags$p(icon(icon_name), style = "margin-bottom: 0rem; text-align: left;")),
        tags$div(tags$p(label, style = "margin-bottom: 0rem; text-align: left;"))
    )|> suppressMessages()
}

card_custom <- function(...) {
    bslib::card(
        ...
    )
}
# acc_item <- function(title, ..., value = title, icon = NULL) {
#     accordion_item(title = title, 
#                    class = "custom-overflow",
#                    ..., 
#                    value = value, 
#                    icon = icon
#        ) |> 
#         shiny::tagAppendAttributes(style = "overflow: auto;", .cssSelector = ".custom-overflow")
# }
