#### 1. Install packages & Excuting library) 

install.packages("twitteR")
install.packages("ROAuth")
install.packages("RCurl")
install.packages('base64enc')
install.packages("streamR") 

library(streamR)
library(RCurl)
library(twitteR)
library(ROAuth)
library(rjson)


#### 2. gaining OAuth; for this step, you need to obtain Twitter Account and Auth,  ##
reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"
consumerKey="4aA32IhBynAXaNcFIoCsywgra"
consumerSecret="N7ZkyBm7mJS3izsrECScUUnxMHsr5amaSG5XEzIDANf20koMMV"
accesstoken="252406625-B4uxDTKPUuF2zGE6kSIV91vMKWaHB23C1fJujyUh"
accesstokensecret="fr6ket5BHIQjCom9xHZjnZT4N3hGqJ0T9SuVmYjD3HiMU"
twitteR:::setup_twitter_oauth(consumerKey, consumerSecret, accesstoken, accesstokensecret)


#### 4. gaining OAuth; start Function Test for elections tweets gethering  =====
electionTweets<-searchTwitter("#ELECTION",lang="en", n=1000)


#### 5. transform from List to DataFrame =====
electionTweets.df=twListToDF(electionTweets)

#### 6. view DataFrame =====
View(electionTweets.df)

#### 7. down load as csv file  =====
write.csv(electionTweets.df, file="C:\\Users\\Ajay\\Desktop\\third semester\\Web and Social\\exercise 3\\electionTweets.df.csv", row.names=F)

#### 8. save R.Data  =====
save.image("C:\\Users\\Ajay\\Desktop\\third semester\\Web and Social\\exercise 3\\electionTweets.RData") 

#### End