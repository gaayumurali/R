library(readr)
df <- read_csv("schools_with_water.csv")
View(df)
install.packages("lattice")
library(lattice)
histogram(~Primary_Only,df,col="blue")
histogram(~Primary_with_U_Primary,df,col="red")
summary(df)
str(df)

#histogram
histogram(~Primary_Only|Primary_with_U_Primary,data=df)
histogram(~Primary_with_U_Primary_Sec_HrSec,df,col="violet")
histogram(~U_Primary_Only,df,col="black")
histogram(~U_Primary_With_Sec_HrSec,data=df)
histogram(~Primary_with_U_Primary_Sec,data=df,col="green")
histogram(~U_Primary_With_Sec,df)
histogram(~Sec_Only,df,col="pink")
histogram(~Sec_with_HrSec.,df,col="orange")
histogram(~HrSec_Only,df)
histogram(~AllSchools,df)
histogram(~Sec_Only|State,df)

df1=subset(df,State=="Bihar")
View(df1)

#boxplot
bwplot(~AllSchools,df,col="violet")
bwplot(~Sec_Only,df)
bwplot(~HrSec_Only,df)
bwplot(~U_Primary_With_Sec,df)
bwplot(~Primary_with_U_Primary_Sec,df)
bwplot(~Sec_with_HrSec.,df)
bwplot(~Primary_Only,df)
bwplot(~Primary_with_U_Primary_Sec_HrSec,df)
bwplot(~U_Primary_Only,df)
bwplot(~U_Primary_With_Sec_HrSec,df)
bwplot(~Primary_with_U_Primary,df)


#scatterplot
xyplot(Sec_Only~AllSchools,df)
xyplot(Primary_with_U_Primary_Sec~Primary_Only,df)
xyplot(U_Primary_Only~Primary_Only,df)
xyplot(HrSec_Only~AllSchools,df)
xyplot(Sec_Only~HrSec_Only,df)
xyplot(Primary_with_U_Primary_Sec_HrSec~AllSchools,df)
xyplot(Primary_Only~AllSchools,df)
xyplot(HrSec_Only~AllSchools,df)

df2=subset(df,State == "Delhi")
df2
histogram(~Primary_Only|df2,df)
histogram(~AllSchools|State,data=df)


