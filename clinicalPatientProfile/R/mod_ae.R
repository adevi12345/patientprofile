mod_ae_ui <- function(id) {
  
  ns <- shiny::NS(id)
  
  shiny::tagList(
    
    shiny::h3("Adverse Events"),
    
    DT::DTOutput(
      ns("ae_table")
    )
    
  )
}
mod_ae_server <- function(
    id,
    patient) {
  
  shiny::moduleServer(
    id,
    function(input, output, session) {
      
      ae_data <- shiny::reactive({
        
        shiny::req(patient())
        
        get_ae_data(
          usubjid = patient()$USUBJID
        )
        
      })
      
      output$ae_table <- DT::renderDT({
        
        ae_data()
        
      })
      
    }
  )
}