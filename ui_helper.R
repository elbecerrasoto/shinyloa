library(shiny)
library(purrr)
library(stringr)

# Read tables here to get pretty names

input_ids <- str_c("split_", 1:35)
labels <- str_c("pretty_", 1:35)

splits_inputs <- pmap(list(input_ids, labels), \(input_id, label)
numericInput(input_id, label,
  value = 1,
  min = 0,
  max = 1
))

suggestionRow <- fluidRow(
  column(
    4,
    textOutput("explanation_suggestion"),
  ),
  column(
    4,
    numericInput("invested_millionsMXN",
      "Total de la inversión (Millones de Pesos)",
      value = 0, min = 0
    ),
  ),
  column(4),
  splits_inputs
)

shocksRow <- fluidRow(
  column(4), # explanation
  column(4), # sinaloa
  column(4) # rest of the country
)

outRow <- fluidRow(
  column(4), # explanation
  column(8), # output table
)
