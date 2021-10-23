# randomforest
# library
library(tidyverse)
library(randomForest)

# dataset
train_file="./data/DM_sampledata/ch8_train.txt"
test_file="./data/DM_sampledata/ch8_test.txt"

d_train <- read.csv(file=train_file, sep = '')
d_test <- read.csv(file = test_file, sep = '')
d_train
d_test

head(d_train)
head(d_test)

# modelling
d_rf <- randomForest(label ~. , d_train)

# predict
d_test_rf_pred <- predict(d_rf, newdata = d_test)

# summary
summary(d_test_rf_pred)

# tuning
tuneRF(d_train[,-6], d_train[,6], doBest = TRUE)

# importance
importance(d_rf)
