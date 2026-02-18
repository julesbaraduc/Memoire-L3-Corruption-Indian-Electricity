#MISE EN PLACE DE L'ESPACE DE TRAVAIL

library(haven)

setwd("/Users/admin/Desktop/Magistère Moi/Mémoire/Data/")


#IMPORTATIONS ET ENREGISTREMENT DES FICHIERS EN .DTA 

#Import 1_Shrug 
  #Shrug con key dta
  shrid_frag_con07_key <- read_dta("1_SHRUG/shrug-con-keys-dta/shrid_frag_con07_key.dta")
  shrid_frag_con08_key <- read_dta("1_SHRUG/shrug-con-keys-dta/shrid_frag_con08_key.dta")
  
  save(shrid_frag_con07_key,shrid_frag_con08_key, file = "Shurg_con_key.RData")

  #Shrug-dsmp-dta (lumière)
  dmsp_con07 <- read_dta("1_SHRUG/shrug-dmsp-dta/dmsp_con07.dta")
  dmsp_con08 <- read_dta("1_SHRUG/shrug-dmsp-dta/dmsp_con08.dta")
  dmsp_pc11dist <- read_dta("1_SHRUG/shrug-dmsp-dta/dmsp_pc11dist.dta")
  dmsp_pc11subdist <- read_dta("1_SHRUG/shrug-dmsp-dta/dmsp_pc11subdist.dta")
  dmsp_shrid <-read_dta("1_SHRUG/shrug-dmsp-dta/dmsp_shrid.dta")
  
  save(dsmp_con07,dsmp_con08,dsmp_pc11dist,dsmp_pc11subdist,dsmp_shrid, file ="shrug-dmsp.RData")

  #shrug-triv-can-dta (candidats)
  trivedia_candidates_clean <- read_dta("1_SHRUG/shrug-triv-cand-dta/trivedi_candidates_clean.dta")
  
  save(trivedia_candidates_clean, file ="shrug_triv_candidate.RData")

  #shurg-viirs-annual-dta
  viirs_annual_con07 <- read_dta("1_SHRUG/shrug-viirs-annual-dta/viirs_annual_con07.dta")
  viirs_annual_con08 <- read_dta("1_SHRUG/shrug-viirs-annual-dta/viirs_annual_con08.dta")
  viirs_annual_pc11dist <- read_dta("1_SHRUG/shrug-viirs-annual-dta/viirs_annual_pc11dist.dta")
  viirs_annual_pc11subdist <- read_dta("1_SHRUG/shrug-viirs-annual-dta/viirs_annual_pc11subdist.dta")
  viirs_annual_shrid <- read_dta("1_SHRUG/shrug-viirs-annual-dta/viirs_annual_shrid.dta")
  
  save(viirs_annual_con07,viirs_annual_con08,viirs_annual_pc11dist,viirs_annual_pc11subdist,viirs_annual_shrid, file="shrug-viirs-annual.Rdata")
  
  rm(list=ls())

#Chargement des files en RData
  load("shrug_triv_candidate.RData")
  load("shrug-dmsp.RData")
  load("shrug-viirs-annual.Rdata")
  load("Shurg_con_key.RData")


#Import Billing Data
 graph_comm_rural <- read_dta("3_Billing_data/graph_comm_rural.dta")
 graph_comm_urban <- read_dta("3_Billing_data/graph_comm_urban.dta")
 graph_dom_rural <- read_dta("3_Billing_data/graph_dom_rural.dta")
 graph_dom_urban <- read_dta("3_Billing_data/graph_dom_urban.dta")
 TARRIF_commercial_urban <- read_dta("3_Billing_data/TARIFF_Commercial_Urban.dta")
 TARRIF_commercial_rural <- read_dta("3_Billing_data/TARIFF_Commercial_Rural.dta")
 TARRIF_domestic_urban <- read_dta("3_Billing_data/TARIFF_Domestic_Urban.dta")
 TARRIF_domestic_rural <- read_dta("3_Billing_data/TARIFF_Domestic_Rural.dta")
 
 save(graph_comm_urban,graph_comm_rural,graph_dom_urban,graph_dom_rural,TARRIF_domestic_rural,TARRIF_domestic_urban,TARRIF_commercial_rural,TARRIF_commercial_urban, file = "Billing_Data.RData")
 