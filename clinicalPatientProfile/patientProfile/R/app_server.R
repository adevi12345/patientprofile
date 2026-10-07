#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  
  patients <- data.frame(
    
    USUBJID = c(
      "SUBJ001",
      "SUBJ002",
      "SUBJ003"
    ),
    
    AGE = c(
      45,
      52,
      61
    ),
    
    SEX = c(
      "M",
      "F",
      "M"
    ),
    
    TREATMENT = c(
      "Drug A",
      "Drug B",
      "Drug A"
    ),
    
    STATUS = c(
      "Active",
      "Active",
      "Completed"
    )
    
  )
  
  
  patient_data <- reactive({
    
    patients[
      patients$USUBJID == input$patient,
    ]
    
  })
  
  
  mod_demographics_server(
    "demographics",
    patient_data
  )
  
}