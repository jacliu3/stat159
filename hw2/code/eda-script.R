library(ggplot2)

# Reading the data
path <- "C:\\Users\\Jacqueline\\berkeley\\2016fall\\stat159\\hw2\\"
ad.data <- read.csv(paste0(path, "data\\Advertising.csv"))
ad.data$X <- NULL

# Generating the summary report
# Can also use sink() command to save output
sink(file=paste0(path, "data\\eda-output.txt"))
summary(ad.data)
sink()

# Generating histograms to help visualize distributions
tv.hist <- ggplot(data=ad.data, aes(ad.data$TV)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "images\\histogram-tv.png"), plot=tv.hist,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\histogram-tv.pdf"), plot=tv.hist,
       width=5, height=3)

radio.hist <- ggplot(data=ad.data, aes(ad.data$Radio)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "images\\histogram-radio.png"), plot=radio.hist,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\histogram-radio.pdf"), plot=radio.hist,
       width=5, height=3)

news.hist <- ggplot(data=ad.data, aes(ad.data$Newspaper)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "images\\histogram-news.png"), plot=news.hist,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\histogram-news.pdf"), plot=news.hist,
       width=5, height=3)

sales.hist <- ggplot(data=ad.data, aes(ad.data$Sales)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "images\\histogram-sales.png"), plot=sales.hist,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\histogram-sales.pdf"), plot=sales.hist,
       width=5, height=3)
