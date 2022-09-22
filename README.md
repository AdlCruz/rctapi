Working status unknown. Install with ```devtools::install_github("AdlCruz/rctapi")```
# rctapi: Search and Download ClinicalTrials.gov
Using this tool is as easy as 1, 2, 3 … 4 … 1a.
## 1. Build a search expression
Both
`"embolism" `
  and
`"heart attack AND NOT stroke AND AREA[StudyType](Interventional OR Observational) AND TILT[OfficialTitle]stress"`
 are valid search expressions, just follow the [rules](https://clinicaltrials.gov/api/gui/ref/syntax).
## 2. Choose which fields you want
 View `all_fields` and create your own list. E.g`c("NCTId","Acronym")`.
 
 Or view `field_lists_df` for pre-made lists.`for_explorer` is good to start with.
##  3. Choose how many studies you want
Reliably retrieve up to 1000 studies.
## 4. Download study data
`stress_heart <- get_study_fields(search_expr = "heart attack AND NOT stroke AND AREA[StudyType](Interventional OR Observational)AND TILT[OfficialTitle]stress", 
fields = for_explorer, max_studies = 500)`

`stress_data` is a dataframe with n rows of studies and n columns of fields.
## 1a. Return an unparsed response to check your search_expression
Toggling the argument `response_content = TRUE` will return the entire API response.

Among the contents is the number of studies that were found to match your search expression.

Access it with `stress_heart$StudyFieldsResponse$NStudiesFound`

NOTE: will not work unless a pre-made list is filling `fields`

## Useful links
[Field definitions](https://clinicaltrials.gov/api/gui/ref/crosswalks)

NOTE: This package includes very little internal error handling.

Developed in fulfillment of HDS MSc Summer Project
