#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here

  squared_number <- reactiveVal()
  observeEvent(input$input_number, {
    squared_number(input$input_number * input$input_number)
  })
  
  output$result <- shiny::renderText({
    squared_number()
    })
}
