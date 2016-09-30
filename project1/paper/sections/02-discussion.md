### Discussion

<center>
![](../images/markdown-logo.png "Markdown logo")
</center>

One aspect of reproducile research is documentation, explaining design choices at
every step. It can be difficult and downright tedious for an author to write-up
his thought process in a text file while constantly referencing code in another, 
and it can be even more difficult for the reader to follow, as it becomes a 
constant hunt for scripts and line numbers. One solution is the integration of the
two, which can be down via markup languages like Markdown. Markdown can be used to 
create *formatted* text (such as this very document) with plaintext syntax, allowing
anyone to open, read, and edit it. In addition, because all formatting is done
via the Markdown language, it holds an advantage over products like Microsoft Word
and Google Docs where the GUI, though convenient, makes actions hard to reproduce. 

---

<center>
![](../images/pandoc-logo.png "Pandoc logo")
</center>

Once we have our plaintext markdown file, we would like to see the formatting 
rendered. In some cases, some file formats might be preferred over others; if our
page is going on a website, html might be desirable. If we want to send it to 
others to view as is, pdf files could be more appropriate. Here lies the use of 
pandoc, a universal document converter that supports over 20 different formats. 
Hence after this paper is written in markdown, a single command 
<center>
```
pandoc -s -o paper.html paper.md
```
</center>
can take the markdown paper as an input and generate the html file as the output.

---

However, putting together a project and compiling it can be much more involved than
that single single line. For instance, this paper is broken down into separate 
markdown files, so it must be concatenated as one before being converted. Typing 
multiple instructions in the command line isn't ideal, as it is slow and prone to 
errors while leaving no documentation of what commands were run. This defeats the 
goal of reproducibility, which is why we use something called a Makefile. A Makefile
is essentially a file of commands which can be grouped together and named. Each 
grouping is called a *target* and now a multitude of commands can be executed by the
single line 
<center>
```
make <target_name>
```
</center>
Now the generation of the report is documented and automated, allowing the authors
and readers alike to know which commands and parameters were used and in what order.

---

<center>
![](../images/git-logo.png "Git logo")
</center>



