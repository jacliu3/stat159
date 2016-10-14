#variables
DATAURL = http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv
AD = data/Advertising.csv

#targets
.PHONY: all data clean deep-clean skeleton

all: eda-output.txt regression.RData report.pdf report.html

report.pdf: regression.Rdata images/scatterplot-* 
	Rscript -e "library(rmarkdown); render('report/report.Rmd')"

report.html: regression.Rdata images/scatterplot-* 
	Rscript -e "library(rmarkdown); render('report/report.Rmd', output_format='html_document')"

eda-output.txt: code/eda-script.R $(AD)
	Rscript $<

regression.Rdata: code/regression-script.R $(AD)
	Rscript $<

data:
	curl $(DATAURL) --output $(AD)

clean:
	rm report/report.pdf

deep-clean:
	rm -r -f code data images report
	
skeleton:
	touch .gitignore LICENSE
	mkdir data code images report
	touch data/README.md
	cd code;\
	mkdir functions scripts tests;\
	touch README.md test-that.R;\
	touch scripts/eda-script.R scripts/regression-script.R scripts/session-info-script.R;\
	touch functions/regression-functions.R tests/test-regression.R
	touch data/README.md report/report.Rmd


