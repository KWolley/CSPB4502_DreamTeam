library(dplyr)
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(data.table)
library(gridExtra)
options(stringsAsFactors = FALSE)

data <- read.csv("ufo_elect_data_v2.csv", na.strings = c("", "NA"))

data <- data %>% select(last_election_year,
                        shape) %>% rename("UFO_shape" = "shape",
                                          "Election_Year" = "last_election_year")

data <- data[-which(is.na(data$Election_Year)),]
data <- data[-which(is.na(data$UFO_shape)),]

data2 <- data %>% group_by(Election_Year,
                           UFO_shape) %>% summarise(Count = n())
p <- list()
q <- list()

get_legend <- function(myggplot){
  tmp <- ggplot_gtable(ggplot_build(myggplot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend <- tmp$grobs[[leg]]
  return(legend)
}

for (i in 1:length(unique(data2$Election_Year))) {
  p[[i]] <- ggplot(data2[data2$Election_Year == unique(data2$Election_Year)[i],], aes(x = UFO_shape, y = Count, fill = UFO_shape)) +
    geom_bar(stat = "identity") +
    theme_bw() +
    xlab("UFO shape") +
    ylab("Observations") +
    ggtitle(paste("UFO shapes in", unique(data2$Election_Year)[i])) + 
    theme(legend.position = "none") +
    theme(axis.text.x = element_blank(),
          axis.ticks.x = element_blank())
  q[[i]] <- ggplot(data2[data2$Election_Year == unique(data2$Election_Year)[i],], aes(x = UFO_shape, y = Count, fill = UFO_shape)) +
    geom_bar(stat = "identity") +
    theme_bw() +
    xlab("UFO shape") +
    ylab("Observations") +
    ggtitle(paste("UFO shapes in", unique(data2$Election_Year)[i])) + 
    theme(axis.text.x = element_blank(),
          axis.ticks.x = element_blank())
 
}

legend <- get_legend(q[[i]])

p[[i + 1]] <- legend

do.call(grid.arrange, c(p, ncol = 5))

#out <- ggarrange(as.character(unique(data2$Election_Year)), nrow = 1)



