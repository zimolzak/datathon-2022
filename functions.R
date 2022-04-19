filename2df <- function(filename) {
    df = read.csv(here('onedrive', 'Working', 'Final Data', filename), sep="|",
        stringsAsFactors = FALSE)  # , na.strings="null"
    return(df)
}

descrip <- c(
  'adhere', 'adherence', 'adhering', 'adherent', 'nonadherent', 'non-adherent',
  'aggressive', 'agitated', 'angry', 'challenging', 'combative',
  'compliance', 'comply', 'compliant', 'complying', 'noncompliant', 'non-compliant', 'noncompliance', 'non-compliance',
  'confront',
  'cooperate', 'cooperating', 'uncooperative', 'noncooperative', 'non-cooperative',
  'defensive',
  'exaggerate', 'exaggerating', 'exaggerated',
  'hysterical', 'unpleasant',
  'refuse', 'refusing',
  'resist', 'resisting', 'resisted'
)

# (non-)adherent, aggressive, agitated, angry, challenging, combative,
# (non-)compliant, confront, (non-)cooperative, defensive, exaggerate,
# hysterical, (un-)pleasant, refuse, and resist.

count_descriptors <- function(charvec) {
  n_found = as.numeric(grepl('asdfasdf', charvec))
  n_found = rep(0, length(n_found))  # vector of zeros
  for (pattern in descrip) {
    num_vec = as.numeric(grepl(pattern, charvec))
    n_found = n_found + num_vec
  }
  return(n_found)
}
