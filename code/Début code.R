setwd("/Users/admin/Desktop/Magistère Moi/Mémoire/Data/RData/")

library(tidyverse)

load("Billing_Data.RData")
load("shrug_triv_candidate.RData")
load("shrug-dmsp.RData")
load("shrug-viirs-annual.Rdata")
load("Shurg_con_key.RData")

moyenne_lumiere <- mean(dsmp_shrid$dmsp_mean_light, na.rm = TRUE)

