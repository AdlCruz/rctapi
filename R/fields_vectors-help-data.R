#' All Field Names in a clinicaltrials.gov Record
#'
#' Character vector containing all queriable field names in a clinicaltrials.gov
#'  record
#'
#' @docType data
#'
#' @usage data(all_fields)
#'
#' @format A character vector with the names of all queriable fields
#'
#' @source \url{https://clinicaltrials.gov/api/info/study_fields_list?fmt=JSON}
#'
#' @keywords fields
#'
#' @examples
#' all_fields
"all_fields"

#' Core Study Information Fields
#'
#' Character vector containing a small selection of relevant fields which prvide
#' an overview of the studies
#'
#' @docType data
#'
#' @usage data(core_info_fields)
#'
#' @format A character vector with a curated selection of 22 fields
#'
#'
#' @keywords fields
#'
#' @examples
#' core_info_fields
"core_info_fields"

#' Extended Study Information Fields
#'
#' Character vector containing a large selection of fields aimed at providing
#' a complete vision of the studies
#'
#' @docType data
#'
#' @usage data(extended_info_fields)
#'
#' @format A character vector with a curated selection of 65 fields
#'
#'
#'
#' @keywords fields
#'
#' @examples
#' extended_info_fields
"extended_info_fields"

#' Study Identification and Status Fields
#'
#' Character vector containing a small selection of fields including study identification, study status,
#' sponsor, regulatory oversight, relevant health condition and a brief summary and
#' detailed description.
#'
#' @docType data
#'
#' @usage data(identification_and_status)
#'
#' @format A character vector with a curated selection of 21 fields
#'
#' @source \url{https://prsinfo.clinicaltrials.gov/definitions.html#identification
#'
#' @keywords fields
#'
#' @examples
#' identification_and_status_fields
"identification_and_status_fields"

#' Study Design, Arms, Groups and Interventions Fields
#'
#' Character vector containing a selection of fields providing information about
#' the study design, number of arms or groups, and types of interventions involved.
#'
#' @docType data
#'
#' @usage data(study_design_arms_groups_and_interventions_fields)
#'
#' @format A character vector with a curated selection of 20 fields
#'
#' @source \url {https://prsinfo.clinicaltrials.gov/definitions.html#StudyDesign
#'
#' @keywords fields
#'
#' @examples
#' study_design_arms_groups_and_interventions_fields
"study_design_arms_groups_and_interventions_fields"

#' Outcome Measures Description Fields
#'
#' Character vector containing a small selection of fields providing information about
#' all outcome measures used
#'
#' @docType data
#'
#' @usage data(outcome_measures_info_fields)
#'
#' @format A character vector with a curated selection of 9 fields
#'
#' @source \url{https://prsinfo.clinicaltrials.gov/definitions.html#Outcomes
#'
#' @keywords fields
#'
#' @examples
#' outcome_measures_info_fields
"outcome_measures_info_fields"

#' Eligibility and Population Fields
#'
#' Character vector containing a small selection of fields providing information regarding
#' eligibility requirements
#'
#' @docType data
#'
#' @usage data(eligibility_fields)
#'
#' @format A character vector with a curated selection of 9 fields
#'
#' @source \url{https://prsinfo.clinicaltrials.gov/definitions.html#Eligibility
#'
#' @keywords fields
#'
#' @examples
#' eligibility_fields
"eligibility_fields"

#' Participant Flow Fields
#'
#' Character vector containing a small selection of fields providing information regarding
#' the progress of participants through each stage of a study
#'
#' @docType data
#'
#' @usage data(participant_flow_fields)
#'
#' @format A character vector with a selection of 14 fields
#'
#' @source \url{https://prsinfo.clinicaltrials.gov/results_definitions.html#Result_ParticipantFlow
#'
#' @keywords fields
#'
#' @examples
#' participant_flow_fields
"participant_flow_fields"

#' Baseline Measures and Characteristics Fields
#'
#' Character vector containing a small selection of fields providing information regarding
#' the baseline measures and data collected in the study
#'
#' @docType data
#'
#' @usage data(baseline_characteristics_fields)
#'
#' @format A character vector with a selection of 18 fields
#'
#' @source \url{https://prsinfo.clinicaltrials.gov/results_definitions.html#Result_Baseline
#'
#' @keywords fields
#'
#' @examples
#' baseline_characteristics_fields
"baseline_characteristics_fields"

#' Outcome Measures and Statistical Analysis Fields
#'
#' Character vector containing a selection of fields providing information regarding
#' the outcomes measured and statistical analyses performed as well as the resulting values.
#'
#' @docType data
#'
#' @usage data(outcome_measures_results_fields)
#'
#' @format A character vector with a selection of 38 fields
#'
#' @source \url{https://prsinfo.clinicaltrials.gov/results_definitions.html#Result_Outcome_Measure
#'
#' @keywords fields
#'
#' @examples
#' outcome_measures_results_fields
"outcome_measures_results_fields"

#' Registration Data Elements Fields
#'
#' Character vector containing registration data elements fields, these elements are
#' all uploaded before the study is completed
#'
#' @docType data
#'
#' @usage data(registration_fields)
#'
#' @format A character vector with a selection of 59 fields
#'
#'
#'
#' @keywords fields
#'
#' @examples
#' registration_fields
"registration_fields"

#' Results Data Elements Fields
#'
#' Character vector containing results data elements fields.
#'
#' @docType data
#'
#' @usage data(registration_fields)
#'
#' @format A character vector with a selection of 71 fields
#'
#'
#'
#' @keywords fields
#'
#' @examples
#' results_fields
"results_fields"

#' Data fields input for netmeta
#'
#' Character vector containing potentially helpful fields for the creation of a netmeta object.
#'
#' @docType data
#'
#' @usage data(for_netmeta)
#'
#' @format A character vector with a selection of 19 fields
#'
#'
#'
#' @keywords fields
#'
#' @examples
#' for_netmeta
"for_netmeta"

#' Data fields input for the data explorer shiny app held in "AdlCruz/rctexplorer"
#'
#' Character vector containing fields used in the data explorer app.
#'
#' @docType data
#'
#' @usage data(for_explorer)
#'
#' @format A character vector with a selection of 29 fields
#'
#'
#'
#' @keywords fields
#'
#' @examples
#' for_explorer
"for_explorer"
