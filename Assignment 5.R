library("here")
library("tidyverse")
library("ggplot2")

df <- read.csv("TBQ05.20211116133909.csv")

view(df)
summary(df)

df$VALUE <- as.numeric(df$VALUE)
df$VALUE <- replace(df$VALUE, is.na(df$VALUE),0)

df$Region.of.Trade <- as.factor(df$Region.of.Trade)
by(df$VALUE, df$Region.of.Trade, sum)

df <- df[which(df$Port!="All Main Irish Ports"),]

ggplot(data = df) +
  geom_point(aes(x=Quarter, y=VALUE, color=Port)) +
  ggtitle("Quarter Tonnage Arriving From Great Britain and Northern Ireland") +
  xlab("Quarter") +
  ylab("Tonnage") +
  ylim(0, 4000) +
  theme_minimal()
  #-5 which 95/100
