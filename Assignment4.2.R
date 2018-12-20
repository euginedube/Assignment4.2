df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
#For the above given data frames and tables perform the following operations:



#Return only the rows in which the left table have match.
merge1<-merge(x=df1, y=df2, by="CustId")
merge1

#Returns all rows from both tables, join records from the left which have matching keys in the right table.
merge2=merge(df1, df2, by="CustId", all=TRUE)
merge2
#Return all rows from the left table, and any rows with matching keys from theright table.
merge3<- merge(df1, df2, by="CustId", all.x = TRUE )
merge3
#Return all rows from the right table, and any rows with matching keys from theleft table.
merge4 <- merge(df1, df2, by="CustId", all.y = TRUE )
merge4

library(dplyr)
library(plyr)
#Return a long format of the datasets without matching key.
union_all(df1, df2)

#Keep only observations in df1 that match in df2.
semi_join(df1, df2)

#Drop all observations in df1 that match in df2.
anti_join(df1, df2)

