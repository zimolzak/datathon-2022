library(ggplot2)
library(here)
library(dplyr)
library(lubridate)

source(file=here("functions.R"))

# demog = filename2df('Patient Demographics 17 20220326.txt')  # 0.6 MB
# comor = filename2df('Patient Comorbidities 17 20220327.txt')  # 2.7 MB
edadm = filename2df('Patient ED Admissions 17 20220326.txt')  # 2.9 MB
# edpro = filename2df('Patient ED DX Problem List 17 20220327.txt')  # 19 MB
# medad = filename2df('Patient Meds Admin Times 17 20220327.txt')  # 93 MB
# order = filename2df('Patient Orders 17 20220327.txt')  # 86 MB

edadm %>%
mutate(ed_adm = ymd_hms(EMERGENCY_ADMISSION_DTTM),
	ed_dis = ymd_hms(ED_DEPARTURE_DTTM),
	inp_adm = ymd_hms(HOSP_ADMSN_TIME),
	inp_dis = ymd_hms(HOSP_DISCH_TIME),
	) %>%
rename(cc10 = First.Chief.Compliant.ICD10, cc9 = First.Chief.Compliant.ICD9) %>%
select(PAT_ID, ED.Disposition, cc10, cc9,
	ed_adm, ed_dis, inp_adm, inp_dis,
	Patient.Class) -> ed_encounter_tidy

cat('\nPatient class')
table(ed_encounter_tidy$Patient.Class)
cat('\nDisposition')
table(ed_encounter_tidy$ED.Disposition)
