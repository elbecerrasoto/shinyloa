library(shiny)
source("ui_helper.R")

ui <- fluidPage(
  radioButtons("template_mode",
    "Seleciona la plantilla de entrada a generar:",
    choiceNames = c(
      "A partir de las matrices de Origen y Destino.",
      "A partir de ingresar manualmente los choques en la demanda final."
    ),
    choiceValues = c("mode_oridest", "mode_shocks")
  )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
