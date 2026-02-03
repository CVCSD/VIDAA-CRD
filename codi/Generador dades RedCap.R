
library(REDCapR)
library(tidyverse)

load(here::here('dades','con.RData'))



# Usability


# lectura metadades

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


meta_concordance <- redcap_metadata_read(
  redcap_uri = con$url,
  token      = con$token_concordance
)


diccionari_concordance <- meta_concordance$data


instr_concordance <- redcap_read(
  redcap_uri = con$url,
  token      = con$token_concordance
)$data


rm(con)

save.image(here::here('dades',"Redcap.RData"))








