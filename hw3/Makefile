#variables
DATAURL = http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv
AD = data/Advertising.csv
CS = code/scripts/
CF = code/functions/
CT = code/tests/

#targets
.PHONY: all data eda regression tests report clean deep-clean skeleton session

all: eda regression report
	Rscript $(CS)session-info-script.R

data:
	curl $(DATAURL) --output $(AD)

eda: $(CS)eda-script.R $(AD)
	Rscript $<

regression: $(CS)regression-script.R $(AD)
	Rscript $<

tests: code/test-that.R $(CF)regression-functions.R $(CT)test-regression.R
	Rscript $<

report: regression eda $(CF)regression-functions.R
	Rscript -e "library(rmarkdown); render('report/report.Rmd')"
	Rscript -e "library(rmarkdown); render('report/report.Rmd', output_format='html_document')"

clean:
	rm -f report/report.pdf
	rm -f report/report.html

deep-clean:
	rm -r -f code data images report
	
skeleton:
	touch .gitignore
	mkdir data code images report
	touch data/README.md
	cd code;\
	mkdir functions scripts tests;\
	touch README.md test-that.R;\
	touch scripts/eda-script.R scripts/regression-script.R scripts/session-info-script.R;\
	touch functions/regression-functions.R tests/test-regression.R
	touch data/README.md report/report.Rmd


