# Install Package dmdScheme -----------------------------------------------


## install.packages("remotes")
## remotes::install_github("Exp-Micro-Ecol-Hub/dmdScheme", ref = "shinyapp", build_opts = "")

## later, it should as aeasy as:
## install.packages("dmdScheme")

remotes::install_github("Exp-Micro-Ecol-Hub/emeScheme", ref = "dev", build_opts = "")
remotes::install_github("Exp-Micro-Ecol-Hub/dmdScheme", ref = "dev", build_opts = "")

## remotes::install_github("Exp-Micro-Ecol-Hub/emeScheme", ref = "efdd9f7886146c127c90044e3879fef321c4499f", build_opts = "")

# Load Package ------------------------------------------------------------


library(emeScheme)


# Create example for this session -----------------------------------------


setwd("basic")

# View Scheme Definition --------------------------------------------------

read.csv("./data/archiving_data/smell.csv")

# MetaData emeScheme basic example in Excel ---------------------------------------------


open_new_spreadsheet("emeScheme")

## Experiment based
## Experiment sheet
## DataFileMetaData sheet
## other sheets
## specifications of properties
## DataFileMetaData special

## data directory


# Validate Metadata -------------------------------------------------------


validate("emeScheme.xlsx")

report("emeScheme.xlsx")


# Export to xml -----------------------------------------------------------

dmdScheme_to_xml("emeScheme.xlsx", )
