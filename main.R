library(ggplot2)
library(here)
library(dplyr)
library(lubridate)

source(file=here("functions.R"))

demog = filename2df('Patient Demographics 17 20220326.txt')  # 0.6 MB
comor = filename2df('Patient Comorbidities 17 20220327.txt')  # 2.7 MB
edadm = filename2df('Patient ED Admissions 17 20220326.txt')  # 2.9 MB
edpro = filename2df('Patient ED DX Problem List 17 20220327.txt')  # 19 MB
medad = filename2df('Patient Meds Admin Times 17 20220327.txt')  # 93 MB
order = filename2df('Patient Orders 17 20220327.txt')  # 86 MB

head(demog)
head(comor)
head(edadm)
head(edpro)
head(medad)
head(order)

edadm %>%
select(PAT_ID, ED.Disposition, First.Chief.Compliant.ICD10, First.Chief.Compliant.ICD9,
	EMERGENCY_ADMISSION_DTTM, ED_DEPARTURE_DTTM, HOSP_ADMSN_TIME, HOSP_DISCH_TIME,
	Patient.Class) %>%
rename(cc10 = First.Chief.Compliant.ICD10, cc9 = First.Chief.Compliant.ICD9) %>%
mutate(ed_adm = ymd_hms(EMERGENCY_ADMISSION_DTTM),
	ed_dis = ymd_hms(ED_DEPARTURE_DTTM),
	inp_adm = ymd_hms(HOSP_ADMSN_TIME),
	inp_dis = ymd_hms(HOSP_DISCH_TIME),
	) %>%
head() -> ed_encounter_test


cols = dim(ed_encounter_test)[2]
for (i in 1:cols) {
	print(class(ed_encounter_test[ , i]))
}
