filename2df <- function(filename) {
    df = read.csv(here('onedrive', 'Working', 'Final Data', filename), sep="|",
        stringsAsFactors = FALSE)  # , na.strings="null"
    return(df)
}

descrip <- c('adher', 'aggress', 'agitat', 'angry', 'challenging', 'combative',
             'complian', 'comply', 'confront', 'cooperat', 'defensive',
             'exaggerate', 'hysterical', 'pleasant', 'refuse', 'resist')

has_any_descriptor <- function(string) {
  for (pattern in descrip) {
    if (grepl(pattern, string)) {
      return(TRUE)
    }
  }
  return(FALSE)
}
