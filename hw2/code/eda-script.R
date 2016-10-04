library(ggplot2)
path <- "C:\\Users\\Jacqueline\\berkeley\\2016fall\\stat159\\hw2\\"
ad.data <- read.csv(paste0(path, "data\\Advertising.csv"))
ad.data$X <- NULL

ad.summary <- summary(ad.data)
capture.output(ad.summary, file=paste0(path, "data\\eda-output.txt"))

tv.hist <- ggplot(data=ad.data, aes(ad.data$TV)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "images\\histogram-tv.png"), plot=tv.hist,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\histogram-tv.pdf"), plot=tv.hist,
       width=5, height=3)

sales.hist <- ggplot(data=ad.data, aes(ad.data$Sales)) + geom_histogram(alpha=0.7)
ggsave(filename=paste0(path, "images\\histogram-sales.png"), plot=sales.hist,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\histogram-sales.pdf"), plot=sales.hist,
       width=5, height=3)
