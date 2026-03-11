setwd("/Users/admin/Desktop/Magistère Moi/Mémoire/Data/RData/")

library(tidyverse)

load("Billing_Data.RData")
load("shrug_triv_candidate.RData")
load("shrug_triv_elections_clean.RData")
load("shrug-dmsp.RData")
load("shrug-viirs-annual.Rdata")
load("Shurg_con_key.RData")


# test fun : moyenne_lumiere <- mean(dsmp_shrid$dmsp_mean_light, na.rm = TRUE)

moyenne <- mean(dsmp_con07$dmsp_max_light) 
