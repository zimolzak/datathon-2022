filename2df <- function(filename) {
    df = read.csv(here('onedrive', 'Working', 'Final Data', filename), sep="|",
        stringsAsFactors = FALSE)  # , na.strings="null"
    return(df)
}
