#' Tarjetas personalizadas
#'
#' @return Un HTML tag de tarjeta (card)
#' @importFrom bslib card card_header
#' @export
card_testing <- function() {
    id <- sample(letters, 4) |> paste0(collapse = "")
    bslib::card(
        card_header(
            tags$span(
                icon("eye"),
                "Título de tarjeta"
            )
        ),
        bslib::input_switch(id = id, label = id)
    )
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
