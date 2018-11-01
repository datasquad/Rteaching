#>> out example starts here
##encountering error messages

##### R Space and error messages ####
##You find yourself floating in "R Space"
##in R Space you can access data that you can "see" 
##(in the Global Environment window)


##### set working directory and load data object ####

##set your working directory
setwd("C:/Users/Ed/Dropbox/WORK/statistics.resources/.MMU.RuseR.group/_2018 R MEETING AND WORKSHOPS/teaching workshop")

##load the data
load("SugarTaxData.RData")

##check the names of your variables!
names(dat_c)

#check the variable types and values!
str(dat_c)

#####Error type 1####

#the following code plots price as a function of drink type
#or does it...
boxplot(Price~type, data=dat_c)

#What does object "Price" not found actually mean?
#Google it!

#fix the code so that it works
boxplot(Price~type, data=dat_c)

#####ERROR 2 boolean errors

##select rows with the Boolean expression "==" which reads
## "is equivalent to"
## We use the which() function

##selection should be rows where the variable "taxed"
##has the value equivalent to "taxed"

##correct example
myTaxed <- dat_c[which(dat_c$taxed=="taxed"), ]

##fix this:
myTaxed <- dat_c$price[which(dat_c$taxed="taxed")]

#what does "unexpected '=' mean?


