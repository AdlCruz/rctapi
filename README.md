# rctapi
 pkg in development

 This package allows an R user to interface with clinicaltrials.gov through their official API (https://clinicaltrials.gov/api/gui/home). 
 Specifically the user will be able to search and download information from studies by the use of a search expression and a list of study fields.
 
 Information regarding the search expression can be found here:
 https://clinicaltrials.gov/api/gui/ref/syntax
 https://clinicaltrials.gov/api/gui/ref/expr
 
 And a complete list of fields can be found here:
 https://clinicaltrials.gov/api/gui/ref/study_structure
 Additionally, the package contains a number of pre-loaded field lists. (e.g core_info_fields, extended_info_fields, eligibility_fields, results_fields). List names and descriptions can be found in "field_lists_df". 
 For study fields definitions use the ClinicalTrials.gov Data Element-to-API Field Crosswalks site :
 https://clinicaltrials.gov/api/gui/ref/crosswalks
 
 Example query, this returns a data frame with rows for studies and a column for each requested field.
 ```get_study_fields(expr = "psoriatic arthritis AND AREA[StudyType]Intervention", fields = core_info_fields)```
 
To install this package please use:
```devtools::install_github("AdlCruz/rctapi")```

NOTE this package includes very little internal error handling.
