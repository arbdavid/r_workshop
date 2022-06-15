################# RSTUDIO INTRO ################################################
# The 4 boxes
# Layouts
# Backgrounds

################# R FILE TYPES #################################################
# R script
# Markdown

# Native Data
# rds
# RData

# Compatible Data
# CSV
# Feather (also python)
# SAS, SPSS, DTA, etc.

################# PATHS AND R PROJECTS #########################################
# R Projects
# General Folder Organization

# Get Working directory
getwd()

# Change working directory
# setwd()

# Relative and Absolute file paths
df <- readRDS("./data/random_numbers.rds")
df <- readRDS(paste0("C:/Users/arbda/Documents/Harvard/2022 Summer/",
                     "R Workshop/r_workshop/data/random_numbers.rds"))

# Using View() or just clicking
View(df)
View(df, 'Test')

# Using head()
View(head(df), 'Head')
View(head(df, 15), 'Head 15')

View(tail(df), 'Tail')

################# WHERE THINGS ARE STORED ######################################
# Save code

# Ram
my_object <- 'David'
rm(my_object)

# Disk
rm('df')
df <- readRDS("./data/random_numbers.rds")

# Workflow recommendations ----
# NEVER save workspace (error prone, slow start time, waste disk space).
# Start ALWAYS from raw_data.
# If long processing time, split scripts in parts, label them 1_first_thing, 
# 2_second_thing, and save an intermediate data file (be mindful of the date).

###################### LIBRARIES ###############################################
# Collections of functions (and sometimes data) written by other people
# Some basic packages are installed and attached by default
paste('Hello', 'World!')
round(2.46, 1)
# Packages sometimes include datasets
mtcars

# Installing packages ----
# There are single packages (e.g. haven) and collections of packages (e.g. 
# tidyverse).

# Install and update with install.packages()
install.packages('haven')
install.packages('tidyverse')

# Some packages have dependencies, and those are installed automatically.

# Attaching or :: ----
# You attach packages by using (library)
library(haven)

# R searches for objects from most to least recently attached package, meaning
# base packages will be last. This leads to desired or undesired masking.
# Be careful when attaching huge packages, e.g. MASS, Hmisc and others.

# When you only want to use one object from a big package. I recommend using ::
# to avoid conflicts.
lubridate::mdy('June 15, 2022')

# Search Path
search()
library(tidyverse)
search()

# For more info, see: https://r-pkgs.org/namespace.html section 13.2

######################### HELP AND DOCUMENTATION ###############################
?lm
help(glm)

# https://www.rdocumentation.org/
# https://rdrr.io/r/


###################### STYLE GUIDE #############################################
# Google's R Style guide
# https://google.github.io/styleguide/Rguide.html

# Hadley Wickham's tweaks (highly recommended):
# http://adv-r.had.co.nz/Style.html

# There are packages that can help with style, but you should learn it first:
# formatR (https://yihui.org/formatr/)
# lintr





