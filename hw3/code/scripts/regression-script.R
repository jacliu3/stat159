library(ggplot2)
 
# Reading the dataset 
path <-getwd()
ad.data <- read.csv(paste0(path, "/data/Advertising.csv"))
ad.data$X <- NULL

# Applying regression model
tv.fit <- lm(formula=Sales~TV, data=ad.data)
tv.sum <- summary(tv.fit)
radio.fit <- lm(formula=Sales~Radio, data=ad.data)
radio.sum <- summary(radio.fit)
news.fit <- lm(formula=Sales~Newspaper, data=ad.data)
news.sum <- summary(news.fit)
mult.fit <- lm(formula=Sales~TV+Radio+Newspaper, data=ad.data)
mult.sum <- summary(mult.fit)

# Saving fitted models
save(tv.fit, radio.fit, news.fit, mult.fit, tv.sum, radio.sum, news.sum, mult.sum,
     file=paste0(path, "/data/regression.Rdata"))

# Residal, Normal QQ, and Scale-Location plots
png(filename=paste0(path, "/images/residual-plot.png"))
plot(mult.fit, which=1)
dev.off()
png(filename=paste0(path, "/images/normal-qq-plot.png"))
plot(mult.fit, which=2)
dev.off()
png(filename=paste0(path, "/images/scale-location-plot.png"))
plot(mult.fit, which=3)
dev.off()

# Creating scatterplots
tv.reg <- ggplot(data=ad.data, aes(x=TV, y=Sales)) + geom_point(alpha=0.6, col="blue") + 
  geom_smooth(method="lm", se=FALSE, col="darkblue")
ggsave(filename=paste0(path, "/images/scatterplot-tv-sales.png"), plot=tv.reg,
       width=5, height=3)

radio.reg <- ggplot(data=ad.data, aes(x=Radio, y=Sales)) + geom_point(alpha=0.6, col="blue") + 
  geom_smooth(method="lm", se=FALSE, col="darkblue")
ggsave(filename=paste0(path, "/images/scatterplot-radio-sales.png"), plot=radio.reg,
       width=5, height=3)

news.reg <- ggplot(data=ad.data, aes(x=Newspaper, y=Sales)) + geom_point(alpha=0.6, col="blue") + 
  geom_smooth(method="lm", se=FALSE, col="darkblue")
ggsave(filename=paste0(path, "/images/scatterplot-news-sales.png"), plot=news.reg,
       width=5, height=3)
