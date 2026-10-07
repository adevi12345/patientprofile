mod_vitals_ui <- function(id) {
  
  ns <- NS(id)
  
  tagList(
    
    h3("Vital Signs"),
    
    tableOutput(ns("vitals"))
    
  )
}


mod_vitals_server <- function(id, vitals_data) {
  
  moduleServer(
    id,
    
    function(input, output, session) {
      
      output$vitals <- renderTable({
        
        vitals_data()
        
      })
      
    }
  )
}