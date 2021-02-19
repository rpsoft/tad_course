library(readr)
library(tidyverse)

# training <- read_csv("~/Downloads/training.1600000.processed.noemoticon.csv", col_names = FALSE)
# 
# colnames(training) <- c("target","ids","date","flag","user","text")
# 
# training$target %>% unique
# 

books_dataset <- goodreads_books %>% select( id, average_rating, title, author, description, genre_and_votes ) %>% 
  filter( ! description %>% is.na() ) %>% filter( ! genre_and_votes %>% is.na() ) %>% 
  mutate( genre = gsub('[[:digit:]]+', '', genre_and_votes)  ) %>% 
  mutate( genre = sapply( strsplit(genre, ','), `[`, 1 )) %>% select(-genre_and_votes,-id) 

books_dataset <- books_dataset %>% head(35000)

books_dataset <- books_dataset %>% filter( genre %in% c("Fiction ","Fantasy ","Romance ","Young Adult ","Nonfiction ","Historical-Historical Fiction ","Mystery ","Science Fiction ","History "))

books_dataset %>% write_csv("books_dataset.csv")
 
table(books_dataset$genre) %>% View
