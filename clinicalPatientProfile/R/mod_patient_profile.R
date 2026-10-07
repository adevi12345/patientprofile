mod_patient_profile_ui <- function(id) {
  
  ns <- shiny::NS(id)
  
  shiny::tagList(
    
    shiny::h3("Patient Profile"),
    
    shiny::tableOutput(
      ns("profile")
    )
    
  )
}
mod_patient_profile_ui <- function(id) {
  
  ns <- shiny::NS(id)
  
  shiny::tagList(
    
    shiny::h3("Patient Profile"),
    
    shiny::tableOutput(
      ns("profile")
    )
    
  )
}