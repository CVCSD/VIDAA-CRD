
library(REDCapR)
library(tidyverse)

load(here::here('dades','con.RData'))

# Usability

res_usability <- redcap_project_info_read(
  redcap_uri = con$url,
  token      = con$token_usability
)


meta_usability <- redcap_metadata_read(
  redcap_uri = con$url,
  token      = con$token_usability
)


diccionari_usability <- meta_usability$data


instr_usability <- redcap_read(
  redcap_uri = con$url,
  token      = con$token_usability
)$data



# Concordance


res_concordance <- redcap_project_info_read(
  redcap_uri = con$url,
  token      = con$token_concordance
)


meta_concordance <- redcap_metadata_read(
  redcap_uri = con$url,
  token      = con$token_concordance
)


diccionari_concordance <- meta_concordance$data


instr_concordance <- redcap_read(
  redcap_uri = con$url,
  token      = con$token_concordance
)$data


save.image(here::here('dades',"Redcap.RData"))








