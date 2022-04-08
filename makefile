.PHONY: all

all: sample.csv output.txt

sample.csv: main.R
	Rscript $<

output.txt: main.R
	Rscript $< > $@

