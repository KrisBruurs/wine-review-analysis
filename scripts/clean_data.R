# Libraries
library(readr)     # read files
library(dplyr)     # data manip
library(tibble)    # work with dataframe
library(tidyr)     # data manip
library(ggplot2)   # plotting
library(stringr)   # work with strings
library(tidytext)  # work with text - main functionality
library(textstem)  # stem words
library(tokenizers) # count words
library(reshape2)  # cast from long to wide and vice versa
library(wordcloud) # Create wordcloud

# Input 
wine_df <- read_csv('data/winemag-data_first150k.csv') %>% 
  select(description, points, price, province, variety, winery)


# Transform

wine_df <- wine_df %>% 
  mutate(n_char = nchar(description),
         n_word = count_words(description)) %>% 
  rowid_to_column('id')
