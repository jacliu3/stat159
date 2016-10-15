### Stat 159 Hw 3
### Code

There are three folders here. The *scripts* folder contains `eda-script.R`, which calculates summary statistics of the features of the dataset (found in `data/Advertising.csv`) and saves the output as `txt` file in the `data` folder. It also creates histograms for the features, saves a `png` files in the `images` folder. The `regression-script.R` file fits the linear models (both simple and multiple regression) and saves the models and their summaries in a `Rdata` file. Scatterplotsw ith the regression line and diagnostic plots are saved as both `png` files under the `images` folder.


The *functions* folder contains a single file (`regression-functions.R`) that calculates different statistics to measure the quality of a model, namely the residual sun of squares, total sum of squares, r squared value, F statistic, and residual standard error.
