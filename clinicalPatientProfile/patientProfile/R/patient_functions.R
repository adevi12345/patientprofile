get_patient <- function(data, usubjid) {
  
  data[
    data$USUBJID == usubjid,
  ]
  
}

patient_data <- reactive({
  
  get_patient(
    patients,
    input$patient
  )
  
})