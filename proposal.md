# The association of biased language in medical text with diagnostic
error

**Project team:** Andrew Zimolzak MD MMSc, Traber Giardina Ph.D.
MSW, Darius Dawson Ph.D., Terri Fletcher Ph.D., Taylor Scott, Debra
Choi, Ph.D.

# Background

Prior authors have critiqued the choice of words in medical texts (PMID
9412299), specifically stigmatizing and biased language. Only recently
has electronic text analysis made it possible to characterize clinical
language usage on a large scale. Recent work (PMID 35044842) used an
expert panel to develop a list of negative patient descriptors and found
that Black patients had disproportionately higher odds of negative
patient descriptors appearing in the history and physical notes of their
medical records compared with White patients.

In VA data, we have previously defined several electronic triggers to
detect patterns suggestive of diagnostic error. The trigger catalog
includes emergency department (ED) visits with dizziness or abdominal
pain with high-risk features, ED return visits (PMID 33180032)
(34279630), and cancer-focused triggers for lung and colorectal
cancer. Our team has experience refining and running these triggers in
the VA data warehouse and translating to other sites' Epic warehouses.

# Specific Aims

1.  We will select and implement one trigger using available BCM data.

2.  We will use a previously tested word list to measure the association
    of negative patient descriptors with marginalized group membership.
    We will compare the association in two strata: those with missed
    opportunities of diagnosis versus those without.

3.  We will perform an open-ended text analysis to discover new words
    associated with membership in a stigmatized group.

# Approach

Leveraging the existing ED triggers, we will use a previously developed
list of terms, negative patient descriptors (PMID 35044842), to find
the base rates of those terms occurring in notes with suspect diagnostic
inaccuracies and measure the associations specified above in aim 2. Time
permitting, we will randomly sample notes and label them for negative,
positive, or unrelated uses to estimate rates of these types of usages.
For aim 2, we will also derive a new word list partly from additional
work (PMID 34259849) and partly from new hypotheses we derive. For aim
3, we will use log-likelihood (Dunning T, 1993), commonly used for
statistical analysis of texts, to determine what words of any type are
used in one group versus another, rather than a pre-specified word list.
We will analyze racial bias in this initial work. However, other factors
for future analysis could include gender, body shape, and mental health
comorbidity. Eventually, we could retrain a model to detect positive,
negative, or irrelevant word uses. We could also review a sample of
notes for themes (PMID 34259849).

# Data requested (also specify study population including inclusion/exclusion criteria)

The study population at BCM comprises all patients with an emergency
department visit and ED discharge to home, followed by hospital
admission within 30 days of the index date. If needed, we can limit to a
specific date range or diagnoses in collaboration with IT. We request
access to demographics (including age, gender, race, ethnicity), problem
list ICD codes, encounter data (dates, ICD codes, and specialty),
procedures, and clinical notes. We request patient weight, height, and
BMI if easy to retrieve.

# Expected outcomes/benefits & Organizational Impact

Characterizing the institutional experience can assess local experience
with missed opportunities of diagnosis and associated factors. This
project serves BCM's commitment to diversity, equity, and inclusion; and
the Commitment to Racial Justice to Improve Public Health. In
particular, this relates to position statement points 3 (Educate our
healthcare workers, scientists, and communities to address structural
racism and mitigate its negative impacts on health) and 5 (Address
inequitable health outcomes affecting underrepresented minorities).

**Do you require support for data analysis once the data is provided
(Y/N)? If so, provide details.** No.
