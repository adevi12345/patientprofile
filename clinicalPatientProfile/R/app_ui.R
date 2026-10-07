#' Application UI
#'
#' @param request Internal Shiny request object.
#'
#' @importFrom shiny NS tagList
#' @noRd
app_ui <- function(request) {
  
  tagList(
    
    golem_add_external_resources(),
    
    shiny::fluidPage(
      
      shiny::titlePanel(
        "Clinical Patient Profile"
      ),
      
      shiny::sidebarLayout(
        
        shiny::sidebarPanel(
          
          mod_patient_selector_ui(
            "patient_selector"
          )
          
        ),
        
        shiny::mainPanel(
          
          mod_patient_profile_ui(
            "patient_profile"
          ),
          
          shiny::hr(),
          
          mod_vitals_ui(
            "vitals"
          ),
          
          shiny::hr(),
          
          mod_labs_ui(
            "labs"
          ),
          
          shiny::hr(),
          
          mod_ae_ui(
            "ae"
          ),
          
          shiny::hr(),
          
          mod_medications_ui(
            "medications"
          )
          
        )
      )
    )
  )
}