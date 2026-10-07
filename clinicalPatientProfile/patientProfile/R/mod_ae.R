mod_ae_ui <- function(id) {
  
  ns <- NS(id)
  
  tagList(
    
    h3("Adverse Events"),
    
    tableOutput(ns("ae"))
    
  )
}


mod_ae_server <- function(id, ae_data) {
  
  moduleServer(
    id,
    
    function(input, output, session) {
      
      output$ae <- renderTable({
        
        ae_data()
        
      })
      
    }
  )
}