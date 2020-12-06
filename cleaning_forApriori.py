import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize  
#nltk.download('stopwords')
#nltk.download('punkt')
from collections import Counter 
import numpy as np 
import pandas as pd 
from mlxtend.frequent_patterns import apriori, association_rules
from spellchecker import SpellChecker


data = pd.read_csv('ufo_elect_data_v2.csv', converters={'comments_array': eval})

spell = SpellChecker()

#data.comments_array.dtypes



data = data.dropna(subset = ['candidate', 'party', 'candidatevotes', 'totalvotes', 'comments']).reset_index(drop = True)

data = data[['comments_array']]

stops = (stopwords.words('english')) 

c = Counter()

for i in range(data.shape[0]):
    data.at[i, 'comments_array'] = [w for w in data.at[i, 'comments_array'] if not w in stops and w in spell.known(data.at[i, 'comments_array'])]
    c.update(data.at[i, 'comments_array'])
    #data.at[i, 'comments_array'] = update



for i in range(data.shape[0]):
    data.at[i, 'comments_array'] = [w for w in data.at[i, 'comments_array'] if c[w] > 3]





data2 = data.comments_array.apply(pd.Series)

data2
#dataHot = pd.get_dummies(data['comments_array'].explode(), prefix='comment')

#dataHot


    


