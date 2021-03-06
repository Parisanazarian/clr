####################
#                  #
#   clR vignette   #
#                  #
####################


library(clR)

# Set parameters
read_data <- "/Users/ ... /data"
data_source <- "Scopus"


##### Load data files
articles_df <- getArticles(files_path = read_data,
                          data_source = data_source)



##### Impact analysis
impact <- impactAnalysis(articles_df = articles_df)

# Plot n articles over time period
plot(impact)

# Top cited papers
topCites(impact, n = 10)

# Most common sources
topSources(impact, n = 6)



##### Structure analysis
structure <- structureAnalysis(impact_object = impact)
str(structure)

# Components vs Size
plot(structure, loess = T)

# Plot structure node : edges
showGraphs(structure)

# Plot components
graphComponents(structure, n = 5)



##### Content analysis

words_to_remove <- c("one")

# Content analysis
content <- contentAnalysis(articles_df =  articles_df, k = 10, words_to_remove = words_to_remove)

# Word cloud
wordCloud(content)

# Top words in corpus
topNWordsInDoc(content, n = 10)

# Plot top words
topNWordsInDoc(content, n = 10, plot = TRUE)

# Top n words in topics
topNWordsInTopic(content, n = 3)

# Plot top n words in topics
topNWordsInTopic(content, n = 3, plot = TRUE)


