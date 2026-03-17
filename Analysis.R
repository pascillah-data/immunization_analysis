#Author: Kerry Wong
#Title: Day 1 of R intro course
#Date: 2025.11.10

#Arithmetic
5+7 #simple summation
1+2+3
sqrt(16)
sqrt(12)
x<-23
x+7 # perform simple operation as per usual
bmi<-c(22.5,27.3,31.2,24.8,29.0,26.1)
mean(bmi)
mean_bmi<-mean(bmi)
mcv1_2022<-read.csv("c/Sillors data set/desktop/immunization_coverage_mcv1.csv")
c/Users/Desktop/immunization_coverage_2022_MCV1.x1
Sillora=read.csv("immunization_coverage_2022_MCV1.csv")
head(Sillora)

#load dataset
data<-read.csv("immunization_coverage_2022_MCV1.csv")
#view first few rows
head(data)
data<-read.csv("immunization_coverage_2022_MCV1.csv")
head(data)
#check columns
colnames(data)
#load CSV and assign to object "immunization"
immunization<-read.csv('immunization_coverage_2022_mcv1.csv')
#Check first few rows
head(immunization)
#mean(average)
mean(immunization$MCV1_Coverage)
#column type
str(immunization)
#conversion of column to numeric
immunization$MCV1_Coverage<-
as.numeric(immunization$MCV1_Coverage)
sum(is.na(immunization$MCV1_Coverage))
#mean
mean(immunization$MCV1_Coverage,na.rm=TRUE)
#Median
median(immunization$MCV1_Coverage,na.rm=TRUE)
head(immunization$mcv1_Coverage)
#Frequency of entries per country
table(immunization$country_name)
colnames(immunization)
#Frequency of entries per country
table(immunization$country_name)
#make sure doses_administered is numeric
immunization$doses_administered<-
as.numeric(immunization$doses_administered)
#check for NAs after conversion
sum(is.na(immunization$doses_administered))
#mean and median administered
mean(immunization$doses_administered,na.rm=TRUE)
median(immunization$doses_administered,na.rm=TRUE)
#install tidyverse
#install.packages("tidyverse)
#load tidyverse
library(tidyverse)
#load dataset
immunization<-read_csv("immunization_coverage_2022_MCV1.csv")
#check first few rows
head(immunization)
immunization%>%
count(Country_name)%>%
arrange(desc(n))
colnames(immunization)
immunization %>%
  summarise(
    mean_doses=mean(doses_administered,na.rm=TRUE),
median_doses=median(doses_administered,na.rm=TRUE)
)
#bar chart
immunization %>%
  group_by("country_name")%>%
  summarise(total_doses=sum(doses_administered,na.rm=TRUE))%>%

  ggplot(aes(x=reorder("country_name",total_doses),y=total_doses))+
  geom_col(fill="skyblue")+ #barcolor
  coord_flip()+ #flip access for readability
  labs(
    title="Total Doses Administered by Country",
    x="Country",
    y="Total Doses Administered"
  )
ggsave("doses_by_country_antigen.png",width=12,height=6)
  
  