#variables
DATAURL = http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv
AD = data/Advertising.csv
RMD = report/report.Rmd
SHELL = C:/Windows/System32/cmd.exe

#targets
.PHONY: all data clean skeleton

all: eda-output.txt regression.RData report.pdf 

report.pdf: regression.Rdata images/scatterplot-* 
	Rscript -e "library(rmarkdown); render('report/report.Rmd')"

eda-output.txt: code/eda-script.R $(AD)
	Rscript $<

regression.Rdata: code/regression-script.R $(AD)
	Rscript $<

data:
	curl $(DATAURL) --output $(AD)

clean:
	rm report/report.pdf
	
skeleton:
	touch .gitignore
	mkdir data code images report
	touch data/README.md
	cd code;\
	touch README.md eda-script.R regression-script.R
	touch report/report.Rmd

