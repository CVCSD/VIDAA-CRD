
# USABILITY

noms_base <- c("Pau", "Anna", "Joan", "Laura", "Marc",
               "Clara", "Pol", "Mireia", "David", "Nuria")

dt_prof_case <- data.frame(record_id = rep(1:10, each = 4), 
                 redcap_repeat_instrument = "professionalcase", 
                 redcap_repeat_instance = rep(seq(1,4), times = 10),
                 nhc = paste0("nhc", "_", seq(1,40)),
                 nom_pacient  = paste0(
                   rep(noms_base, length.out = 40),
                   " ",
                   LETTERS[(1:40 - 1) %% 26 + 1]
                 ),
                 id_tc = paste0("tc", "_", seq(1,40)),
                 professionalcase_complete = 2
                 )



write.csv2(x = dt_prof_case, file = here::here("dades","importprofcase.csv"), row.names = FALSE)


dt_prof <- data.frame(record_id = seq(1,10),
                      redcap_repeat_instrument = "",
                      redcap_repeat_instance = "",
                      profesional = noms_base,
                      date_inclusion = "",
                      inclusion_criteria = 1,
                      e_mail = paste0(noms_base, "@gmail.com"),
                      age_prof = "",
                      int_per_year = "",
                      exper_years = "",
                      characteristics_of_professional_complete = 0
                      )



write.csv2(x = dt_prof, file = here::here("dades", "importprof.csv"), row.names = FALSE)


# CONCORDANCE


# record_id	nhc2	inc_edat18	inc_dispositiu	inc_ct_scans	inc_proc_metadata	inc_missing_doc	inclusionexclusion_criteria_complete

dt_conc_incl <- data.frame(
  record_id = seq(1,100),
  nhc = paste0("nhc_",sample(seq(1,100), 100, replace = F)),
  inc_edat18 = sample(c(0,1), 100, replace = T, prob = c(0.5, 0.5)),
  inc_dispositiu = sample(c(0,1), 100, replace = T, prob = c(0.5, 0.5)), 
  inc_ct_scans = sample(c(0,1), 100, replace = T, prob = c(0.5, 0.5)),
  inc_proc_metadata = sample(c(0,1), 100, replace = T, prob = c(0.5, 0.5)),
  inc_missing_doc = sample(c(0,1), 100, replace = T, prob = c(0.5, 0.5)),
  inclusionexclusion_criteria_complete = 2
)

write.csv2(x = dt_conc_incl, file =  here::here("dades", "importconc_incl.csv"), row.names = FALSE,)



set.seed(1234)

naixement = paste0(sample(seq(1946,2008), 100, replace = T),"-" ,sample(seq(1,12),100, replace = T),"-", sample(seq(1,30), 100, replace = T))

dt_conc_baseline <- data.frame(
  record_id = seq(1,100),
  edat = as.numeric(format(Sys.Date(), "%Y")) - as.numeric(format(as.Date(naixement, format = "%Y-%m-%d"), "%Y")),
  data_naix = naixement,
  sexe = sample(c(1,2), 100, replace = T),
  imc = sample(seq(20,30), 100, replace = T),
  chad2ds2_score =  sample(seq(1,10), 100, replace = T),
  has_score =  sample(seq(1,10), 100, replace = T),
  af_type = sample(c(1,2), 100, replace = T),
  heart_failure = sample(c(0,1), 100, replace = T),
  diabetes = sample(c(0, 1), 100, replace = TRUE),
  ischemic_stroke = sample(c(0, 1), 100, replace = TRUE),
  other_vascular_disease = sample(c(0, 1), 100, replace = TRUE),
  hypertension = sample(c(0, 1), 100, replace = TRUE),
  abnormal_liver_function = sample(c(0, 1), 100, replace = TRUE),
  abnormal_renal_function = sample(c(0, 1), 100, replace = TRUE),
  ischemic_heart_disease = sample(c(0, 1), 100, replace = TRUE),
  pci = sample(c(0, 1), 100, replace = TRUE),
  cabg = sample(c(0, 1), 100, replace = TRUE),
  lvef = sample(c(0, 1), 100, replace = TRUE),
  valvular_heart_disease = sample(c(0, 1), 100, replace = TRUE),
  crt_pacemaker_icd = sample(c(0, 1), 100, replace = TRUE),
  intracranial_hemorrhage = sample(c(0, 1), 100, replace = TRUE),
  gi_bleed = sample(c(0, 1), 100, replace = TRUE),
  urinary_tract_bleeding = sample(c(0, 1), 100, replace = TRUE),
  other_spontaneous_bleeding = sample(c(0, 1), 100, replace = TRUE),
  stroke_despite_oac = sample(c(0, 1), 100, replace = TRUE),
  cerebral_amyloid_angiopath = sample(c(0, 1), 100, replace = TRUE),
  cognitive_impairment = sample(c(0, 1), 100, replace = TRUE),
  patient_preference = sample(c(0, 1), 100, replace = TRUE),
  anti_thrombotic = sample(c(0, 1), 100, replace = TRUE),
  baseline_complete = 2
)


write.csv2(x = dt_conc_baseline, file = here::here("dades", "importconc_baseline.csv"), row.names = FALSE)





















