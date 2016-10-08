### Jacqueline Liu
### Stat 159 Hw 2

This is a report that demonstrates the use of linear regression
on a toy dataset, studying the relationship between sales of a product
and money spent on advertising. To generate the report, the R packages
`png`, `grid`, and `xtable` are required and can be installed with the
`install.packages` function. 

Before running any *make* commands on a Unix machine, it may be to necessary
to remove the line in the Makefile defining the SHELL variable:
```
SHELL = C:/Windows/System32/cmd.exe
```

Running the default *make* command by itself has will recompile the paper, 
as well running
```
make clean
make all
```

To recreate the skeleton (NOTE: this will delete the contents of the paper),
 run the following commands from the project1 folder:
```
rm -r data
rm -r code
rm -r images
rm -r report
rm .gitignore
make skeleton
```
This will leave you with the folders, images, and blank md files needed to 
recreate this paper.

We're going to follow the [Creative Commons Attribution 4.0 International License.](https://creativecommons.org/licenses/by/4.0/).