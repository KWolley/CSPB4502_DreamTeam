library(dplyr)
library(tidyr)
library(plyr)
library(arules)
library(stringr)
library(RColorBrewer) 
options(stringsAsFactors = FALSE)


# import dataset 
data <- read.csv("Documents/GitHub/CSPB4502_UFO_PresidentialElections/test.csv")

data <- data[which(data$last_election_year == "2012"),]

data <- data %>% select(comments_array) %>% dplyr::rename("items" = "comments_array")


data$items <- (gsub("\\[|\\]|'| ", "", data$items))

write.csv(data, "ItemList.csv", row.names = TRUE)

txn <- read.transactions(file="ItemList.csv", rm.duplicates= TRUE, format="basket",sep=",",cols=1);


txn@itemInfo$labels <- gsub("\"","",txn@itemInfo$labels)
basket_rules <- apriori(txn,parameter = list(sup = 0.001, conf = 0.2,target="rules"))

inspect(basket_rules)

