Select distinct
         pat.pat_id
        ,pat.PAT_MRN_ID
        ,pat.SEX_C "Sex Code"
        ,sex.name "Sex"
        ,pat.BIRTH_DATE
        ,CONVERT(int,ROUND(DATEDIFF(hour,pat.BIRTH_DATE,GETDATE())/8766.0,0)) AS Age
        ,pat.ETHNIC_GROUP_C "Ethnic Group Code"
        ,eg.name "Ethnic Group"
        ,race.PATIENT_RACE_C "Race Code"
        ,pr.name "Race"
        ,pat.ZIP
        ,pat.LANG_WRIT_C
        ,pat.EMPY_STATUS_C
        ,pat.COUNTRY_OF_ORIG_C  /* no data for this field */
        ,pat.INTRPTR_NEEDED_YN
        ,pat.LANGUAGE_C
        ,pat.LANG_CARE_C   /* no data for this field */
        ,pat.MARITAL_STATUS_C
        ,pat.MEDICAID_NUM
        ,pat.MEDICARE_NUM
from orgfilter.patient pat
left outer join orgfilter.patient_race race on pat.pat_id = race.PAT_ID
left outer join orgfilter.ZC_PATIENT_RACE pr on race.PATIENT_RACE_C = pr.PATIENT_RACE_C
left outer join orgfilter.ZC_ETHNIC_GROUP eg on pat.ETHNIC_GROUP_C = eg.ETHNIC_GROUP_C
left outer join orgfilter.ZC_SEX sex on pat.SEX_C = sex.RCPT_MEM_SEX_C

where pat.PAT_MRN_ID IN('000')  -- Put list of real MRNs here instead of fake.
