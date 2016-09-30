#variables
IMGURL = https://github.com/ucb-stat159/stat159-fall-2016/raw/master/projects/proj01/images/

#targets
.PHONY: clean skeleton

paper.html: paper.md

paper.md: 00-abstract.md 01-introduction.md 02-discussion.md 03-conclusions.md

clean:
	rm paper.html

skeleton:
	mkdir paper paper/sections images
	touch .gitignore
	cd paper/sections;\
	touch 00-abstract.md 01-introduction.md 02-discussion.md 03-conclusions.md
	cd images;\
	wget $(IMGURL)git-logo.png $(IMGURL)github-logo.png $(IMGURL)markdown-logo.png;\
	wget $(IMGURL)pandoc-logo.png $(IMGURL)stat159-logo.png 