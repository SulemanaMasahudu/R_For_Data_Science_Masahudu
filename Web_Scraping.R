library(rvest)
lego_movie <- read_html('http://www.imdb.com/title/tt1490017/')
lego_movie
lego_movie%>%
  html_nodes('strong span')%>%  
  html_text()%>%  
  as.numeric()


lego_movie %>%
html_nodes("#titleCast .itemprop span") %>%
html_text()

