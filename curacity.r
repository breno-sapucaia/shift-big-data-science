install.packages("swirl")
library("swirl")
swirl()
1
12
ls()
class(plants)
dim(plants)
nrow(plants)
ncol(plants)

object.size(plants)

names(plants)

head(plants)

head(plants, 10)

tail(plants, 15)


summary(train)
table(plants$Active_Growth_Period)
str(plants)

1
1
13
sample(1:6, 4, replace = TRUE)
sample(1:20, 10)

LETTERS
sample(LETTERS)

flips <- sample(c(0,1) , 100 ,replace=TRUE, prob= c(0.3,0.7))

flips
?sum
sum(flips)


?rbinom
ifelse(train$Sex %in% c("female","male"), 0, 1)
swirl()
breu
1
flips2 <- rbinom(100, size = 1, prob =0.7)
flips2
sum(flips2)

rnorm(10, mean= 100, sd= 25)
?rpois
rpois(5, 10)
my_pois <- replicate(100, rpois(5,10))
my_pois

cm <- colMeans(my_pois)


hist(cm)
1
1
8
TRUE==TRUE

strcmp()
install.packages('strcmp')
c("a", "b", "c") %stri>=% "b"
'a' == 'a'
'female' == 'female'

p <- ifelse(train$Sex == "female", 1,0)

train

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
