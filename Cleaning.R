install.packages("readxl")
library("readxl")
setwd("C:\\Users\\aspire 3\\Desktop\\project term 2")

trade<-read_excel(file.choose())
#trade<-read_excel("Dataset_Int_business2.xlsx")
summary(trade)
View(trade)
business<-trade

#Modify names of columns 
names(business) <- c("Country", "Year", "Commoditycode", "Commodity", "Flow",
                     "Dollars", "Weight", "Quantityname", "Quantity", "Category")

#structure of data
str(business)

#summary of data
summary(business) #Missing values present in Weight and Quantity


trader <-  na.omit(business)#if missing values are eliminated, we have 58058 obs.
summary(trader)


write.csv(trader,"tableau.csv" , row.names = FALSE)
