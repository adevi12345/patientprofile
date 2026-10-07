#' Application server
#'
#' @param input Shiny input object
#' @param output Shiny output object
#' @param session Shiny session object
#'
#' @noRd
app_server <- function(input, output, session) {
  
  patient <- mod_patient_selector_server(
    "patient_selector"
  )
  
  mod_patient_profile_server(
    "patient_profile",
    patient = patient
  )
  
  mod_vitals_server(
    "vitals",
    patient = patient
  )
  
  mod_labs_server(
    "labs",
    patient = patient
  )
  
  mod_ae_server(
    "ae",
    patient = patient
  )
  
  mod_medications_server(
    "medications",
    patient = patient
  )
}