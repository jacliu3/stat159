#variables
IMGURL = https://github.com/ucb-stat159/stat159-fall-2016/raw/master/projects/proj01/images/
PP = paper/paper
PPATH = paper/sections/
ABS = $(PPATH)00-abstract.md
INT = $(PPATH)01-introduction.md 
DIS = $(PPATH)02-discussion.md 
CON = $(PPATH)03-conclusions.md

#targets
.PHONY: clean skeleton paper

paper.html: $(PP).md
	pandoc -s -o $(PP).html $<

paper/paper.md: $(ABS) $(INT) $(DIS) $(CON)
	pandoc -s -o $(PP).md $^

clean:
	rm $(PP).md
	rm $(PP).html

skeleton:
	mkdir paper paper/sections images
	touch .gitignore
	cd paper/sections;\
	touch 00-abstract.md 01-introduction.md 02-discussion.md 03-conclusions.md
	cd images;\
	wget $(IMGURL)git-logo.png $(IMGURL)github-logo.png $(IMGURL)markdown-logo.png;\
	wget $(IMGURL)pandoc-logo.png $(IMGURL)stat159-logo.png 