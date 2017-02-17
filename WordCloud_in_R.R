#Create a text file

#Select a write up, preferably a huge one so that the output looks meaningful.

#Copy and paste
the text in a plain text file (e.g : ml.txt)

#Save the file

#Install the following packages

install.packages("tm")
 for text mining

install.packages("tm_map")

install.packages("SnowballC")
 for text stemming

install.packages("wordcloud")
word-cloud generator 

install.packages("RColorBrewer")
color palettes

install.packages
("VectorSource")

#Once all the packages are installed you need tom load it as you are
always required to!

library("tm")

library("SnowballC")

library("wordcloud")

library("RColorBrewer")

install.packages("Slam")

#Import the text file in R

text <-readLines(file.choose())

filePath
<-"C:\\Users\\JosephN2\\Desktop\\file.txt"

text <-readLines(filePath)

text <-readLines(filePath)

#Load the corpusA corpus is a collection of written or spoken on a computer and used to find out how language is used.



docs <-Corpus(VectorSource(text))

inspect(docs)

The following steps us the tm_map() function to clean the data

toSpace <-content_transformer(function (x , pattern ) gsub(pattern, " ", x))

#This gets rid of  the symbols. You can tweak the code according to the symbols used in the write up.

docs <-tm_map(docs, toSpace, "/")

docs <-tm_map(docs, toSpace, "@")

docs <-tm_map(docs, toSpace, "\\|")

Converts
the text to lower case

docs <-tm_map(docs, content_transformer(tolower))

#This removes all the numbers

docs <- tm_map(docs, removeNumbers)

#Deletes the stop words like “the”, ”we”, “us”, etc

docs <-tm_map(docs, removeWords, stopwords("english"))

#Good bye punctuations

docs <-tm_map(docs, removePunctuation)

#Eliminates extra white spaces

docs <-tm_map(docs, stripWhitespace)

#Reduces inflected (or sometimes derived) words to their word stem

docs <-tm_map(docs, stemDocument)  

#Document matrix This helps you create a matrix containing a list of the most used words in the text
and their frequencies in a decreasing order



dtm <- TermDocumentMatrix(docs)

m <- as.matrix(dtm)

v <-sort(rowSums(m),decreasing=TRUE)

d <- data.frame(word = names(v),freq=v)

head(d, 10)

#Generate the word cloud. This is the moment I was waiting for!



set.seed(1234)

#This sets a threshold for word inclusion

wordcloud(words= d$word, freq = d$freq, min.freq = 4,  
max.words=20, random.order=FALSE, rot.per=0.35, 

colors=brewer.pal(8,
"Dark2"))install.packages("tm")  # for text mining

