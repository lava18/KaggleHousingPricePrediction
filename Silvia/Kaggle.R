setwd("/Users/lujian/Desktop/Kaggle")
library(VIM)
library(mice)
library(dplyr)
train = read.csv("train.csv")
train = train[,-81]
test = read.csv('test.csv')

full = rbind(train,test)

aggr(full)
md.pattern(full)

train %>%
  group_by(MSZoning) %>%
  summarize(mean(SalePrice))

aov(train)
