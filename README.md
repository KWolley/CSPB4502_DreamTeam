# Title: UFO
## Team members: 
1) Shelby Bearrows
2) Gurhar
3) Kara Wolley
4) Sam Cramer
## Description: 
This project will analyze the occurance, location and prevalence of UFO sightings in the United States in the last century. For further analysis we will also see if there are any correlations with UFO sightings and US general elections. Our work will address the following questions:
1) Which cities have the highest prevalence in sightings?
2) Are the shape of the sighting dependent on the duration?
3) Are sightings with similar shape or duration more prevalent in certain cities?
4) Does the shape of the UFO change over time?
5) Do more men report UFO sightings than women? What other gender disparities are present in UFO sightings?
6) During years with the highest number of UFO sightings, which political parties win the most election?
7) XXX
## Prior Work:
We have downloaded our data and selected the best UFO sightings and US election results dataset with the most data points and cleanest data. We've aso looked into attributes to merge on (zip code vs. US States) and we believe that merging on US States will be appropriate. We've also started thinking about other ways to clean and prepare the data for analysis.
## Datasets:
  1) UFO Sightings dataset
  * URL: [UFO sightings][1]
  * b) Downloaded as csv files on Kara and Shelby's computers
  2) US Elections dataset (House and Senate)
  * a) URL: [US Elections][2]
  * b) Downloaded on Shelby's computer
## Proposed Work:
  1) Cleaning
    * a) The UFO dataset is especially 'dirty' and will to remove symbols and format dates and state abbreviations. This will also be         
      necesarry prior to merging with the US Elections dataset. The US Elections dataset seems much cleaner but likely will need some cleaning.
  2) Preprocessing
    * a)XXX
  3) Integration
    * a) Merge the UFO dataset with the US elections dataset. This will drop some UFO sightings that occured outside of the US states.
 ## Tools:
  R and python
## Evaluation: 
    






[1]: https://www.kaggle.com/NUFORC/ufo-sightings?select=complete.csv "UFO Sightings"
[2]: https://www.kaggle.com/tunguz/us-elections-dataset "US Elections"


