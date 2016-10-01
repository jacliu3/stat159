### Abstract

Reproducibility - the idea that others can independently conduct a
similar analysis and come to the same conclusions - has become a major
factor in assessing projects and research. In this paper we discuss the
role of basic tools for achieving reproducibility, namely markdown,
pandoc, make, and git. For more information on how to install or use
these utilities, please Google it.

### Introduction

In all projects involving data analysis, there are many files and
folders involved (i.e. data, code, images). Some rely on others, such as
images generated from code using information from the data. It can be a
complex network of relationships, making it difficult for others to
understand how the final report was generated. There are countless
examples of how these obstacles can lead to inaccurate and fraudulent
claims, some of the more famous examples being Reinhart and Rogoff's
economic work and Potti's biomedical research. Hence we rely on
reproducibile research practices to elucidate the methods used and
decisions made. This involved proper documentation practices,
scripting/automation (using the command line over graphical user
interface actions which are hard to record), and version control. These
are not the only approaches to reproducible research, but they're the
ones we will discuss.

### Discussion

<center>
![](../images/markdown-logo.png "Markdown logo")
</center>
One aspect of reproducile research is documentation, explaining design
choices at every step. It can be difficult and downright tedious for an
author to write-up his thought process in a text file while constantly
referencing code in another, and it can be even more difficult for the
reader to follow, as it becomes a constant hunt for scripts and line
numbers. One solution is the integration of the two, which can be down
via markup languages like Markdown. Markdown can be used to create
*formatted* text (such as this very document) with plaintext syntax,
allowing anyone to open, read, and edit it. In addition, because all
formatting is done via the Markdown language, it holds an advantage over
products like Microsoft Word and Google Docs where the GUI, though
convenient, makes actions hard to reproduce.

------------------------------------------------------------------------

<center>
![](../images/pandoc-logo.png "Pandoc logo")
</center>
Once we have our plaintext markdown file, we would like to see the
formatting rendered. In some cases, some file formats might be preferred
over others; if our page is going on a website, html might be desirable.
If we want to send it to others to view as is, pdf files could be more
appropriate. Here lies the use of pandoc, a universal document converter
that supports over 20 different formats. Hence after this paper is
written in markdown, a single command
<center>
    pandoc -s -o paper.html paper.md

</center>
can take the markdown paper as an input and generate the html file as
the output.

------------------------------------------------------------------------

However, putting together a project and compiling it can be much more
involved than that single single line. For instance, this paper is
broken down into separate markdown files, so it must be concatenated as
one before being converted. Typing multiple instructions in the command
line isn't ideal, as it is slow and prone to errors while leaving no
documentation of what commands were run. This defeats the goal of
reproducibility, which is why we use something called a Makefile. A
Makefile is essentially a file of commands which can be grouped together
and named. Each grouping is called a *target* and now a multitude of
commands can be executed by the single line
<center>
    make <target_name>

</center>
Now the generation of the report is documented and automated, allowing
the authors and readers alike to know which commands and parameters were
used and in what order.

------------------------------------------------------------------------

<center>
![](../images/git-logo.png "Git logo")
</center>
Given all these tools for generating a report, what happens if we want
to return to a previous version? The only thing to do really is hit
ctrl-z multiple times, but if the file has already been saved and
closed, then even that is no longer an option. The solution here is git,
a version control system that allows us to save snapshots (aka a
*commit*) of a project at a given point in time. A text description (aka
a *commit message*) is appended to each snapshot to help document what
was achieved in that step. For instead, for this paper, I might create a
commit when I write the abstract with the message "Wrote the abstract"
and commit again later with the message "Wrote the introduction".
Changes made to the project can be viewed as a series of commits, and
each commit can be undone if needed (meaning all the changes made in
that commit would be deleted). Git, in controlling "versions" of the
project, not only preserves a history of a project but also allows for
multiple copies of a project to exist at a certain point in time. Here,
if I am writing this paper and have a sudden stroke of inspiration to
make it into an app complete with games, I might be hesitant to change
the paper in case I can't finish the app before the deadline. Git allows
me to create a copy of my paper (called a *branch*) and make changes
there while preserving the original paper. This way, if the app idea
crashes and burns, I can return to my original copy and submit that for
a grade. If the app works, I can *merge* the new branch with the
original grade, so all the changes I made are reflected in the original
paper. Because the changes are only consolidated when I call *merge*, I
can be sure that the original paper will only changes once I want it to
(which in this case would be when the app is fully functional). This
idea of branching extends to multiple people; team members can all be
working with their own branches (copies) of the project and merge their
changes onto the default copy once they're sure their code/changes work.
They can also checkout other people's branches to see what they're up to
with a simple command of *checkout*. Git's varied functionality is very
important for reproducible research, as it helps document the stages of
a project.

------------------------------------------------------------------------

<center>
![](../images/github-logo.png "GitHub logo")
</center>
The question arises: yes we're using git, but how can other people see
the code that is on my laptop? This is why, in conjunction with git, we
also use GitHub, an online system that hosts projects. Each project has
a specific URL so when I make commits for this paper, I can *push* those
changes to the Internet at that URL and other people can *pull* my
changes from that URL onto their computers. There are other companies
that offer similar servies (like BitBucket), but GitHub is the most
popular. This paper exists on GitHub too (see
github.com/jacliu3/stat159/project1) so others can read and, more
importantly, grade it.

### Conclusion

This paper hopefully demonstrated the use of certain tools for good
reproducible research. It did not take too long to put together because
once familiar with the resources and commands (i.e. how to use git to
commit, push, pull or the markdown syntax), the workflow is streamlined
and highly efficient. However, it can be difficult at first to become
comfortable with their usage. The "easiest" part for me was the actual
use of the tools while the "hardest" would probably be putting together
this paper and deciding how to verbalize something so technically
rooted. Any obstacles were overcome by the use of Google and
StackOverflow; one benefit of using open-source tools is the large
community that supports them. Reproducible research contributes to this
collaborative society and allows for people to share their work and
partake in others.
