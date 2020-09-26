# Title: UFO
## Team members: 
1) Shelby Bearrows
2) Gurhar Khalsa
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
7) What kind of relationships exist between geographic regions with UFO sightings and their election results?
8) What kind of language/words are used to describe UFOs?
9) Do multiple UFO sightings within the same area happen frequently or infrequently? If they are frequent, what's the average time lapsed between each sighting.
10) How did the proximity of an election affect the frequency of UFO sightings across the US?
11) In states that vote Republican are there more or less UFO sightings?

TOP 4
1) How does term number effect the number of UFO sightings? Is this also dependent on the political party?
2) Are UFO sightings increasing over time?
3) If UFO sightings do increase over time, how is that correlated with the turn out rate for elections?
4) In states that vote Republican are there more or less UFO sightings?

## Prior Work:
We have downloaded our data and selected the best UFO sightings and US election results dataset with the most data points and cleanest data. We've aso looked into attributes to merge on (zip code vs. US States) and we believe that merging on US States will be appropriate. We've also started thinking about other ways to clean and prepare the data for analysis.
## Datasets:
  1) UFO Sightings dataset
  - URL: [UFO sightings][1]
  - Downloaded as csv files on Kara and Shelby's computers
  2) US Elections dataset (House and Senate)
  - URL: [US Elections][2]
  - Downloaded on Shelby's computer
## Proposed Work:
  1) Cleaning
    - The UFO dataset is especially 'dirty' and will to remove symbols and format dates and state abbreviations. This will also be         
      necesarry prior to merging with the US Elections dataset. The US Elections dataset seems much cleaner but likely will need some cleaning.
  2) Preprocessing
    - The UFO dataset will need to have some values input that are missing. Some values may remain null, but many are predictable, such as if the 'county' value for       a row of data is blank, but we know the state is 'TX,' it's safe to input the USA for the country value. 
  3) Integration
    - Merge the UFO dataset with the US elections dataset. This will drop some UFO sightings that occured outside of the US states. 
  4) Mining <br/>
    - Questions 1 and 2 in Description could be explored with histogram analysis and correlation analysis respectivly. Duration of sighting for question two may have to be converted into an interval variable or nominal for chi-square testing. <br/>
    - A chi square test could be applied to question 3 as well to establish any correlation between UFO shape and cities. <br/>
    - We may have to define similarity measures between shapes like "sphere" and "circle" vs "sphere" and "triangle" for question 4 <br/>
    - Histogram analysis may shed some initial light on say the shapes used to describe UFOs and the gender of the person reporting the sighting for question 5. <br/> 
    - A term cloud may provide insight into language in sighting descriptions<br/>
 ## Tools:
  - R, python - numpy, pandas
## Evaluation: 






[1]: https://www.kaggle.com/NUFORC/ufo-sightings?select=complete.csv "UFO Sightings"
[2]: https://www.kaggle.com/tunguz/us-elections-dataset "US Elections"


