library(shiny)
source("ui_helper.R")

ui <- fluidPage(
  suggestionRow,
  shocksRow,
  outRow,
)

server <- function(input, output) {
  output$explanation_suggestion <-
    renderText({
      "Esta sección genera sugerencias
      de shocks de demanda, dados un sector y una
      inversión específicas.

      Dichas sugerencias se usan para llenar las
      tablas de shocks en la siguiente sección.

      Sin embargo la sección de shocks puede
      ser editada libremente, ignorado o solo usando parcialmente
      las sugerencias aquí generadas.

      Las sugerecias se obtienen al multiplicar
      la inversión por la estructura porcentual
      del sector seleccionado.

      Los estructura porcentual por sector se obtine
      al promediar las matrices
      de origen-destino de los años 2003 al 2023."
    })
}

shinyApp(ui = ui, server = server)
