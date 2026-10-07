#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd

app_ui <- function(request) {
  
  tagList(
    
    fluidPage(
      
      titlePanel("Clinical Patient Viewer"),
      
      sidebarLayout(
        
        sidebarPanel(
          
          selectInput(
            inputId = "patient",
            label = "Select Patient",
            choices = c(
              "SUBJ001",
              "SUBJ002",
              "SUBJ003"
            )
          )
          
        ),
        
        mainPanel(
          
          mod_demographics_ui("demographics")
          
        )
        
      )
      
    )
    
  )
}