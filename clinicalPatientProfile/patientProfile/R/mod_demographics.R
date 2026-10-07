mod_demographics_ui <- function(id) {
  
  ns <- NS(id)
  
  tagList(
    
    h3("Demographics"),
    
    tableOutput(ns("demographics"))
    
  )
}


mod_demographics_server <- function(id, patient_data) {
  
  moduleServer(
    id,
    
    function(input, output, session) {
      
      output$demographics <- renderTable({
        
        patient_data()
        
      })
      
    }
  )
}

mod_patient_server <- function(id) {
  
  moduleServer(
    id,
    function(input, output, session) {
      
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
        )
        
      )
      
      output$profile <- renderTable({
        
        patients[
          patients$USUBJID == input$patient,
        ]
        
      })
      
    }
  )
}