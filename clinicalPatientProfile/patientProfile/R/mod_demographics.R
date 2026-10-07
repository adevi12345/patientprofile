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