filename2df <- function(filename) {
    df = read.csv(here('onedrive', 'Working', 'Final Data', filename), sep="|",
        stringsAsFactors = FALSE)  # , na.strings="null"
    return(df)
}

descrip <- c('adher', 'aggress', 'agitat', 'angry', 'challenging', 'combative',
             'complian', 'comply', 'confront', 'cooperat', 'defensive',
             'exaggerate', 'hysterical', 'pleasant', 'refuse', 'resist')

count_descriptors <- function(charvec) {
  n_found = as.numeric(grepl('asdfasdf', charvec))
  n_found = rep(0, length(n_found))  # vector of zeros
  for (pattern in descrip) {
    num_vec = as.numeric(grepl(pattern, charvec))
    n_found = n_found + num_vec
  }
  return(n_found)
}
