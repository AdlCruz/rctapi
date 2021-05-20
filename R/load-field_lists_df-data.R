#load-field_lists_df

name <- c("all_fields",
          "core_info_fields",
          "extended_info_fields",
          "identification_and_status_fields",
          "study_design_arms_groups_and_interventions_fields",
          "outcome_measures_info_fields",
          "eligibility_fields",
          "participant_flow_fields",
          "baseline_characteristics_fields",
          "outcome_measures_results_fields",
          "registration_fields",
          "results_fields",
          "for_netmeta",
          "for_explorer")

description <- c("All queriable field names",
                 "Smallest election of relevant fields providing complete overview of the study without including the results",
                 "Large selection of fields from all registration data elements (information recorded before study began and no results)",
                 "Fields including study identification, study status, sponsor, regulatory oversight, relevant health condition and a brief summary and detailed description",
                 "Information about the study design, number of arms or groups, and types of interventions involved.",
                 "Information about all outcome measures used",
                 "Information regarding eligibility requirements",
                 "Information regarding the progress of participants through each stage of a study",
                 "Information regarding the baseline measures and data collected in the study",
                 "Information regarding the outcomes measured and statistical analyses performed as well as the resulting values.",
                 "Large selection of registration data elements fields, these elements are all uploaded before the study is completed",
                 "Large selection of results data elements fields.",
                 "","")

helpurl <- c("https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#resultDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#resultDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#resultDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#regDataElements",
             "https://clinicaltrials.gov/api/gui/ref/crosswalks#resultDataElements",
             "",
             "")

n <- c(length(all_fields),length(core_info_fields),length(extended_info_fields),
       length(identification_and_status_fields),length(study_design_arms_groups_and_interventions_fields),
       length(outcome_measures_info_fields),length(eligibility_fields),length(participant_flow_fields),
       length(baseline_characteristics_fields),length(outcome_measures_results_fields),
       length(registration_fields),length(results_fields),length(for_netmeta), length(for_explorer))

field_lists_df <- data.frame(names = name , description = description, fields = n, help = helpurl, stringsAsFactors = FALSE)
rownames(field_lists_df) <- field_lists_df$name

#usethis::use_data(field_lists_df)
