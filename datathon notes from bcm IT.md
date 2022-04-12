# datathon IT mtg

2022-03-22

one person can have mult med records per identity.




# procedure

* pat id = internal. This is always unique. use it to join tables.

* pat mrn id = one person can have more than one.

* ed_episode_id = identifies an ED episode. we think it's unique to a pt & an ER visit. Looks like might get carried forward to admission.

* pat_enc_csn_id = just another key. also an event ID that's specific to an episode id. an admission gets a new one generated. Be careful, not all CSNs join together. But like might get carried forward to admission?

"patient procedures xlsx" may turn out to be valuable. Order_status_c: 1 pend 2 sent 3 result 4 cancel 5 complete.



# labs

it exists: proc name, order time, status, name, result time, ord_value



# prob list

pat_id, dx id, icd10 list, icd9 list, description

prob list has noted_date and entered_date. We want prob list from way back too, not just er. Description field looks useful too.



# narrative (notes)

so far, any note assoc with any pt. note_id but also line. Lines look arbitrary, not semantic sections. still need date, need encounter id.



# er visit

ed_disposition_c is crucial. first_chief_complaint_id. the hsp_enc_datediff is precomputed and kind of weird. They all have hosp_admsn_time, even if not "admitted" in clinical sense. icu dates too.

"R BMI" is the usual flo_meas_name



# to do for IT

- generic prob list yes
- visit dx if exists
- note assoc with er index date yes
- ht wt bmi yes
- insurance if exists

`pat_acct_cvg` table but source has data but not "our copy". fin_class looks good, {commercial mcarre mcaid self wcomp tricare champva group blacklung blushield medigap other dkregional}. zc_fin_class is maybe the table of interest to do the decode.

