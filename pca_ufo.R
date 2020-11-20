library(dplyr)
library(tidyr)
library(plyr)
library(factoextra)
#options(stringsAsFactors = FALSE)


#read in data
ufo <- read.csv("ufo_elect_data_v2.csv", na.strings = c(""))




ufo <- ufo[-which(is.na(ufo$party)),]

ufo$city <- sub(" \\(.*\\)", "", ufo$city)

ufo$city <- paste(ufo$city, ufo$state_x, sep = ", ")


set.seed(12345)

a <- factor(ufo$city, levels = unique(ufo$city))

ufo$location <- as.integer(a)

a <- factor(ufo$shape, levels = unique(ufo$shape))

ufo$shaped <- as.integer(a)


#select cols
ufo <- ufo %>% select(party,
                      last_election_year,
                      location,
                      shaped,
                      duration..seconds.,
                      latitude,
                      longitude,
                      candidatevotes,
                      totalvotes) %>% dplyr::rename("duration" = "duration..seconds.",
                                                    "candidate_votes" = "candidatevotes",
                                                    "total_votes" = "totalvotes")

ufo$duration <- as.numeric(ufo$duration)

ufo <- na.omit(ufo)

#covariance matrix
S <- prcomp(ufo[,2:ncol(ufo)])


