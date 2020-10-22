
# Problem Statement/motivation 
## This project is motivated by the following topics:
UFO sightings across the Globe has been a highly controversial topic for over a century.  Main stream media rarely publishes possible sightings for fear of ridicule while individuals that report a sighting are often cast out from popular society.  This primary purpose of this will be to create a visual representation of UFO sightings that is easy to interpret by users, compile useful summary statistics, and gain new perspective for the authors.  A secondary goal of this project is to integrate election data with the UFO data.  Election data are collected by the  MIT Election Data and Science Lab and published in 2018.   
• Investigate trends in UFO sightings in the United States
• Better understand patterns of sightings, occurrences and sighting location
• Identify trends in UFO shape to better understand advances in alien technology
or at least how human perception of aliens have changed over time.
• Predict where and when UFO sightings occur based on the outcomes of US
presidential and general elections.

## Data integration aims to answer the following questions:
• Are UFO sightings increasing over time?
• How has the UFO shape changed over time?
• If UFO sightings do increase over time, how is that correlated with the turn out rate for elections?
• Do states that vote Republican have significantly more UFO sightings?
• How does term number effect the number of UFO sightings? Is this also dependent on the political party?


# Literature survey (previous work) describe and cite.
#### Prior Work:
Prior work on this dataset includes 166 notebooks presenting analysis on kaggle (https://www.kaggle.com/NUFORC/ufo-sightings/notebooks) Some of the most commonly explored questions include: Frequency of sightings by location (including per capita), word cloud analysis on the description attribute, shape of UFOs by time of year, sightings by shape and season, and shape frequencies, just to name a few avenues of exploration. Perhaps the most explored question is whether sightings have increased over time, the data seem to show that they have. Among the correlational questions explored one chi-square analysis revealed a relationship between sightings and region (https://www.kaggle.com/adhok93/eda-and-chi-squared-test). While shape over time has been explored, the time variable was usually by week or month, rather than by decade for example (this could be interesting to explore). Merging this dataset with election data will likely add a new level of novelty to our work not present in the prior work.

Additional work has been done by a group of students out of USC Viterbi concluded that “We found sci-fi movie releases correlated with an increase in sightings” and “We also found that events like thunderstorms caused an uptick in reports.”  This research was centered on weather that was occuring during the sighting and time of year.  Our research will expand on time of year with the integration of the presidential data.


# Proposed Work
The aim of this report is to apply all phases of the knowledge discovery process to UFO sighting data collected by the National UFO Reporting Center.  Methods used by the knowledge discovery process include, data cleaning, integration, selection, transformation, mining, evaluation and knowledge presentation.  Primary data include sightings from the last century across the United States, Great Britain, Germany, Canada and Australia.  Additional integration of data will include county presidential election results from the year 200-2016, if time permits.  

## E.g., what do you need to do for data collection, preprocessing, cleaning
For the primary data set, UFO sightings, a single source will be used from the National UFO Reporting Center as published in 2019.  The following tasks must be performed for this data set prior to use. 
1)	Data must be cleaned to remove random errors which can be identified through data sorting methods.  Cleaning will also include the analysis of missing values.  Missing values, or nulls, must be identified and handled appropriately.
2)	Data integration will occur if the project has remaining time to introduce electoral data.  This integration will be done with additional cleaning.
 
## Describe how it is different than what has been done previously from your literature survey (or if replicating).
Previous work aimed to address geographical, season and visual characterizations of UFO sightings.  Some of this project will repeat the work previously done.  Additional work will be performed to address XXX.
Additionally, if time allows, novel research will be done by integrating electoral data by county. 

# Data set (make sure you have the data set!). Provide URL and details about the data set

## Primary data set:
https://www.kaggle.com/NUFORC/ufo-sightings
This data set is approximately 28MB in size and contains 11 different attributes of UFO sightings.

## Secondary data set:
https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/VOQCHQ

# Evaluation Methods
• Histograms to identify classification of UFO shape or visualizations by election terms (bins of years)
• Heatmaps to visualize geographical location of UFO sightings to support hypotheses.
• Apiori to quantify minimal support
• Correlation measures including Pearson’s and lift.
• Student t test for the comparison of means 

# Tools
1) MATLAB
2) Python
3) Tableau

# Milestones What you plan to have done by when

1) Oct. 16: Data cleaning 
2) Oct. 21: Final decision on integration of electoral data.  Preliminary data selection, transformation and visualization
3) Nov 7: Data mining and evaluation with second pass of visualization
4) Nov 21: Preliminary pass of knowledge presentation.
