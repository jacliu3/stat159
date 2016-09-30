### Jacqueline Liu
### Stat 159 Proj 1

This is a project that compiles a paper on tools for reproducible data science 
(Makefiles, Git/GitHub, pandoc, and markdown) by using those very tools. The 
paper itself is in the *paper* folder, while the inputs to the paper are under
*paper/sections*. All images are in the *images* folder. To delete the generated
paper output (both markdown and html) and recreate it yourself, run:
```
make clean
make paper.html
```
Running the default *make* command by itself has will also recompile the paper.

To recreate the skeleton (NOTE: this will delete the contents of the paper), run
the following commands from the project1 folder:
```
rm -r paper
rm -r images
rm .gitignore
make skeleton
```
This will leave you with the folders, images, and blank md files needed to create
this paper.

We're going to follow the [Creative Commons Attribution 4.0 International License.](https://creativecommons.org/licenses/by/4.0/).