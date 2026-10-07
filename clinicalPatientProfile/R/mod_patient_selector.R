#' Patient selector UI
#'
#' @param id Module id
#'
#' @noRd
mod_patient_selector_ui <- function(id) {
  
  ns <- shiny::NS(id)
  
  shiny::tagList(
    
    shiny::selectInput(
      inputId = ns("study"),
      label = "Study",
      choices = NULL
    ),
    
    shiny::selectInput(
      inputId = ns("patient"),
      label = "Patient",
      choices = NULL
    )
    
  )
}

#' Patient selector server
#'
#' @param id Module id
#'
#' @noRd
mod_patient_selector_server <- function(id) {
  
  shiny::moduleServer(
    id,
    function(input, output, session) {
      
      patients <- get_patient_data()
      
      shiny::updateSelectInput(
        session,
        "study",
        choices = unique(patients$STUDYID)
      )
      
      shiny::observeEvent(
        input$study,
        {
          
          selected <- patients[
            patients$STUDYID == input$study,
          ]
          
          shiny::updateSelectInput(
            session,
            "patient",
            choices = selected$USUBJID
          )
          
        }
      )
      
      selected_patient <- shiny::reactive({
        
        shiny::req(input$patient)
        
        patients[
          patients$USUBJID == input$patient,
        ]
        
      })
      
      selected_patient
    }
  )
}