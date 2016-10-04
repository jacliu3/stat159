#variables
DATAURL = http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

#targets
.PHONY: all data clean skeleton

all: report.pdf eda-output.txt regression.RData

report.pdf: report/report.Rmd
	idk

eda-output.txt: code/eda-script.R
	Rscript $<

regression.Rdata: regression-script.R
	Rscript $<

data:
	curl $(DATAURL) --output data/Advertising.csv 

clean:
	rm report/report.pdf
	
skeleton:
	touch .gitignore
	mkdir data code images report
	touch data/README.md
	cd code;\
	touch README.md eda-script.R regression-script.R
	touch report/report.Rmd

