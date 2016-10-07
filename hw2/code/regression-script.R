library(ggplot2)

# Reading the data
path <- "C:\\Users\\Jacqueline\\berkeley\\2016fall\\stat159\\hw2\\"
ad.data <- read.csv(paste0(path, "data\\Advertising.csv"))
ad.data$X <- NULL

# Applying regression model
tv.fit <- lm(formula=Sales~TV, data=ad.data)
tv.sum <- summary(tv.fit)
radio.fit <- lm(formula=Sales~Radio, data=ad.data)
radio.sum <- summary(radio.fit)
news.fit <- lm(formula=Sales~Newspaper, data=ad.data)
news.sum <- summary(news.fit)

# Saving fitted models
save(tv.fit, radio.fit, news.fit, tv.sum, radio.sum, news.sum,
     file=paste0(path, "data\\regression.Rdata"))

# Creating scatterplots
tv.reg <- ggplot(data=ad.data, aes(x=TV, y=Sales)) + geom_point() + 
  geom_smooth(method="lm", se=FALSE)
ggsave(filename=paste0(path, "images\\regression-tv.png"), plot=tv.reg,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\regression-tv.pdf"), plot=tv.reg,
       width=5, height=3)

radio.reg <- ggplot(data=ad.data, aes(x=Radio, y=Sales)) + geom_point() + 
  geom_smooth(method="lm", se=FALSE)
ggsave(filename=paste0(path, "images\\regression-radio.png"), plot=radio.reg,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\regression-radio.pdf"), plot=radio.reg,
       width=5, height=3)

news.reg <- ggplot(data=ad.data, aes(x=Newspaper, y=Sales)) + geom_point() + 
  geom_smooth(method="lm", se=FALSE)
ggsave(filename=paste0(path, "images\\regression-news.png"), plot=news.reg,
       width=5, height=3)
ggsave(filename=paste0(path, "images\\regression-news.pdf"), plot=news.reg,
       width=5, height=3)



