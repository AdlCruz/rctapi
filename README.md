# rctapi
 pkg development for rctapi

 This package allows an R user to interface with clinicaltrials.gov through their official API (https://clinicaltrials.gov/api/gui/home). 
 Specifically the user will be able to search and download information from studies by the use of a search expression and a list of study fields.
 
 Information regarding the search expression can be found here:
 https://clinicaltrials.gov/api/gui/ref/syntax
 https://clinicaltrials.gov/api/gui/ref/expr
 
 And a complete list of fields can be found here:
 https://clinicaltrials.gov/api/gui/ref/study_structure
 Additionally, the package contains a nunber of pre-specified field lists. (e.g core_info_fields, extended_info_fields, eligibility_fields, results_fields)
 
 Example of a query, this returns a data frame with rows for studies and a column for each requested field.
 
 get_study_fields(expr = "psoriatic arthritis AND AREA[StudyType]Intervention", fields = core_info_fields)
 
To install this package please use
"devtools::"AdlCruz/rctapi"

NOTE this package includes NO internal error handling.
