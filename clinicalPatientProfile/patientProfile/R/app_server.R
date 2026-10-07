#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  
  patients <- get_patient_data()
  
  vitals <- get_vitals_data()
  
  ae <- get_ae_data()
  
  
  selected_patient <- reactive({
    
    req(input$patient)
    
    input$patient
    
  })
  
  
  patient_data <- reactive({
    
    patients[
      patients$USUBJID == selected_patient(),
    ]
    
  })
  
  
  vitals_data <- reactive({
    
    vitals[
      vitals$USUBJID == selected_patient(),
    ]
    
  })
  
  
  ae_data <- reactive({
    
    ae[
      ae$USUBJID == selected_patient(),
    ]
    
  })
  
  
  mod_demographics_server(
    "demographics",
    patient_data
  )
  
  
  mod_vitals_server(
    "vitals",
    vitals_data
  )
  
  
  mod_ae_server(
    "ae",
    ae_data
  )
  
}