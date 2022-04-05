library(ggplot2)
library(here)
library(dplyr)
source(file=here("functions.R"))

demog = filename2df('Patient Demographics 17 20220326.txt')  # 0.6 MB

comor = filename2df('Patient Comorbidities 17 20220327.txt')  # 2.7 MB
edadm = filename2df('Patient ED Admissions 17 20220326.txt')  # 2.9 MB
edpro = filename2df('Patient ED DX Problem List 17 20220327.txt')  # 19 MB
medad = filename2df('Patient Meds Admin Times 17 20220327.txt')  # 93 MB
order = filename2df('Patient Orders 17 20220327.txt')  # 86 MB

# head(demog)
head(comor)
head(edadm)
head(edpro)
head(medad)
head(order)
