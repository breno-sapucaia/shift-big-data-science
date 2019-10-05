p <- ifelse(train$Sex == "female", 1,0)

train
View(train)
##verificar com calma a Pclass
test$Pclass = as.factor(test$Pclass)

new_train <- train
new2_train <- new_train
new2_train

test$Age <- ifelse(is.na(test$Age),sample(0:80,1),test$Age)

new2_train$Embarekd <- ifelse(is.na(new2_train$Embarked),"S",new2_train$Embarked)


new2_train$Embarked <- ifelse(is.na(new2_train$Embarked),"S",new2_train$Embarked)

View(new2_train)

new2_train$Age <- ifelse(is.na(new2_train$Age),sample(0:80,1),new2_train$Age)
new2_train$Sex <- as.numeric(new2_train$Sex)
new2_train$Survived <- as.numeric(new2_train$Survived)
new2_train$Embarked

new3_train <- new2_train

is.na(new3_train$Embarked)

new2_train <- train

View(new2_train)

summary(new_train)
sd(new_train$age~Pclass)
summary(new2_train)
new_train <- train

hist(new_train$Age)
boxplot(new_train$Age)                        
lm(new_train$Age~new_train$Survived)

?numeric
as.numeric(3.2)
clear()
