test_that(
  "get_patient returns correct patient",
  {
    
    data <- data.frame(
      
      USUBJID = c(
        "SUBJ001",
        "SUBJ002"
      ),
      
      AGE = c(
        45,
        52
      )
      
    )
    
    result <- get_patient(
      data,
      "SUBJ001"
    )
    
    expect_equal(
      result$AGE,
      45
    )
    
  }
)