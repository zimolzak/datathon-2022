# Final Data folder

The `txt` files are pipe-delimited.




# Commands

```
wc * >> README.txt
shasum * >> README.txt
head -n 1 *.txt >> README.txt
```

# Word counts

          56      571     22348 Datathon Project 17 Final Requiremnts.docx
       29305   112249   2784938 Patient Comorbidities 17 20220327.txt
        3729    32197    649760 Patient Demographics 17 20220326.txt
       14135    85642   3073414 Patient ED Admissions 17 20220326.txt
      129183  1103663  19464124 Patient ED DX Problem List 17 20220327.txt
      542280  5616712  97158579 Patient Meds Admin Times 17 20220327.txt
      656976  3500511  90395019 Patient Orders 17 20220327.txt
     1375664 10451545 213548182 total

# SHA sums

    466eecbcb179a4695b1e1e5153426f992baf0cab  Datathon Project 17 Final Requiremnts.docx
    b7551e5ded399b921ac64a20e7088003530f5f89  Patient Comorbidities 17 20220327.txt
    ff26a2c5d2de2b1f29d1e02ecd84a3e82d1fc5b2  Patient Demographics 17 20220326.txt
    f2840a070f29071288f29a57bee3627a28db7f24  Patient ED Admissions 17 20220326.txt
    d555719a60681197a8b894b7ab7571d98cbadcb6  Patient ED DX Problem List 17 20220327.txt
    fe177f406d781b6200f39e2dc60f7cb85e37f0c3  Patient Meds Admin Times 17 20220327.txt
    ef23d68079435e9af760d39fd92496c84f832f6c  Patient Orders 17 20220327.txt
    a32f224e46d24af698b4ce2abf3ef123b1a35186  README.txt

# Header lines

```
==> Patient Comorbidities 17 20220327.txt <==
#|pat_id|Problem List ID|LINE|Problem DX ID|Date Entered into System|Date Noted by Patient|DESCRIPTION|PROBLEM_CMT|CHRONIC_YN|CURRENT_ICD10_LIST

==> Patient Demographics 17 20220326.txt <==
#|pat_id|PAT_MRN_ID|Sex Code|Sex|BIRTH_DATE|Age|Ethnic Group Code|Ethnic Group|Race Code|Race|ZIP|Employment Status Code|Employment Status|INTRPTR_NEEDED_YN|Language Code|Language|Marital Status Code|Marital Status|MEDICAID_NUM|MEDICARE_NUM|Financial Class Code|Financial Class

==> Patient ED Admissions 17 20220326.txt <==
#|PAT_ID|PAT_ENC_CSN_ID|ED_EPISODE_ID|HOSPITAL_ACCOUNT_ID|ED_DISPOSITION_C|ED Disposition|FIRST_CHIEF_COMPLAINT_ID|First Chief Compliant ICD10|First Chief Compliant ICD9|EMERGENCY_ADMISSION_DTTM|ED_DEPARTURE_DTTM|PREV_HSP_ENC_DATEDIFF|PRIMARY_DX_ID|CURRENT_ICD9_LIST|HOSP_ADMSN_TIME|HOSP_DISCH_TIME|Patient Class Code|Patient Class|ICU Entry Date/Time|ICU Departure Date/Time|ICU Department ID|ICU Department

==> Patient ED DX Problem List 17 20220327.txt <==
#|PAT_ID|PAT_ENC_CSN_ID|HOSPITAL_ACCOUNT_ID|PRIMARY_DX_ID|CURRENT_ICD10_LIST|CURRENT_ICD9_LIST|EMERGENCY_ADMISSION_DTTM|ED_DEPARTURE_DTTM|DESCRIPTION

==> Patient Meds Admin Times 17 20220327.txt <==
#|pat_id|PAT_ENC_CSN_ID|ORDER_MED_ID|ORDER_STATUS_C|Order Status|MEDICATION_ID|NAME|SIG|ORDERING_DATE|START_DATE|END_DATE|TAKEN_TIME|MAR_ADMIN_DEPT_ID|DEPARTMENT_NAME

==> Patient Orders 17 20220327.txt <==
#|pat_id|PAT_ENC_CSN_ID|Order ID|Procedure ID|Procedure Name|Procedure Code|Order Time|PROC_BGN_TIME|PROC_END_TIME|Result Time|Order Status Code|Order Status
```
