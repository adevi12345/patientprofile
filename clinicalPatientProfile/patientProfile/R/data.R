get_patient_data <- function() {
  
  data.frame(
    
    USUBJID = c(
      "SUBJ001",
      "SUBJ002",
      "SUBJ003"
    ),
    
    AGE = c(45, 52, 61),
    
    SEX = c("M", "F", "M"),
    
    TREATMENT = c(
      "Drug A",
      "Drug B",
      "Drug A"
    )
    
  )
}

get_vitals_data <- function() {
  
  data.frame(
    
    USUBJID = c(
      "SUBJ001",
      "SUBJ002",
      "SUBJ003"
    ),
    
    SYSBP = c(120, 130, 125),
    
    DIABP = c(80, 85, 82),
    
    PULSE = c(72, 78, 75)
    
  )
}

get_ae_data <- function() {
  
  data.frame(
    
    USUBJID = c(
      "SUBJ001",
      "SUBJ001",
      "SUBJ002"
    ),
    
    AEDECOD = c(
      "Headache",
      "Nausea",
      "Fatigue"
    ),
    
    AETOXGR = c(
      1,
      2,
      1
    )
    
  )
}