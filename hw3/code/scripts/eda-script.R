library(ggplot2)

# Set working directory to that of source file
# this.dir <- dirname(parent.frame(2)$ofile)
# setwd(paste0(this.dir, "/../.."))
path <- getwd()

ad.data <- read.csv(paste0(path, "/data/Advertising.csv"))
ad.data$X <- NULL

# Summary report and correlation matrix as txt file
cm <- cor(ad.data)
sink(file=paste0(path, "/data/eda-output.txt"))
cat("Data Summary\n")
summary(ad.data)
cat("\nCorrelation Matrix\n")
cm
sink()

# Saving correlation matrix as object
save(cm, file=paste0(path,"/data/correlation-matrix.RData"))

# Scatterplot matrix
png(filename=paste0(path, "/images/scatterplot-matrix.png"))
pairs(ad.data)
dev.off()

# Generating histograms to help visualize distributions
tv.hist <- ggplot(data=ad.data, aes(ad.data$TV)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "/images/histogram-tv.png"), plot=tv.hist,
       width=5, height=3)

radio.hist <- ggplot(data=ad.data, aes(ad.data$Radio)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "/images/histogram-radio.png"), plot=radio.hist,
       width=5, height=3)

news.hist <- ggplot(data=ad.data, aes(ad.data$Newspaper)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "/images/histogram-news.png"), plot=news.hist,
       width=5, height=3)

sales.hist <- ggplot(data=ad.data, aes(ad.data$Sales)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "/images/histogram-sales.png"), plot=sales.hist,
       width=5, height=3)
