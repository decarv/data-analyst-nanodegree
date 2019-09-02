## Report

### Introduction

This was the first time I had to deal with gathering data from Twitter API and cleaning untidy and what I found to be really dirty data and hard to clean. 

### Gathering Data

As Udacity provided two sets of data, the work on gathering was expected to be made only through requests via Twitter API, using Tweepy Library.

I was able to set up a Twitter developer, read Tweepy’s documentation and start downloading Tweet data really quick. At first, it was not clear that the Tweets I was getting from the API were Tweet objects, and not deserialized JSON data. The documentation is poor in this aspect and I had to read Tweepy’s code to understand the methods I could apply to the Tweet object or classes I could use to parse the data.

After this setback, I looped though the tweet IDs found in the provided Tweet archive and got the full data for each Tweet. I stored every error and the correspondent ID in a dictionary so I could analyze it and handle it afterwards. At last, I wasn’t able to obtain 23 tweets out of 2356 due to structural limitations (errors 144 and 179).

### Assessing Data

After loading the databases to a Jupyter Notebook, I started assessing the data for missing values, untidy, inaccurate, incomplete and inconsistent data. For this, I prepared the dataframes, merging the newly obtained data and the data from the archive and keeping two separate dataframes initially, one for the tweets (“df”) and the other one for image predictions (“dfi”).

The biggest issues happened in df, given the amount of missing values – for most columns, the untidy data – more than one variable in some columns and more than one observation units in one table, the invalid data – type qualification had more than one value and names and ratings were wrongfully registered, and the inconsistent data – some columns containing unclear information.

The issues with dfi encompassed inconsistent data for most names of breed, which would be an arduous task too, that I decided not to tackle.

The biggest challenge in assessing the data was having to iterate many times before documenting every issue with it. Every time I would document an issue and try to clean it just to find out that there were other issues that I had to clean.

### Cleaning Data

Cleaning was a tortuous task for two main reasons. 

First, I had to iterate over and over because I would ever find more things to clean or I would never know exactly how things should be cleaned. the whole cleaning of the data happened at the same time as assessing it. 

Sometimes I would try to perform cleaning just to find out that it needed more cleaning in a new way, or that I should approach the cleaning differently. Sometimes it was unclear how I should deal with the variables, if I should keep them in df, if they should be excluded due to missing values, if categorical values should be tidied or not. 

Second, actually finding ways to programmatically clean every problem in a column in the most efficient way was not easy. Sometimes I would fix something and some problem would appear due to the solution I had just applied.
 
This process taught me that it makes sense to organize the structure of your cleaning, depending on how the variable that is object to the cleaning acts on your data. I also learned that sometimes cleaning something can be decided with logic, but sometimes it comes down to a personal decision, a matter of intuition.

### Exploratory Data Analysis Report

For the exploratory Data Analysis of the We Rate Dogs database, I decided to check various aspects of the data found in the twitter database. I did not analyze the image predictions data very thoroughly, as it did not make very sense to me to analyze all the data from predictions which confidence measure sometimes averaged 0.50.

The first analysis I did was about name of dogs. I found out that Lucy is the most common name of dogs found in We Rate Dogs, followed by Charlie, Oliver, Cooper, Penny.

The second analysis was about the most used source for posting tweets by We Rate Dogs. We can see that, by far, the most used source by We Rate Dogs is the Twitter for iPhone.

The third analysis investigated which types of dogs appears most in Tweets from We Rate Dogs and, out of the dog types, which ones people seem to like the most on average. I found out that the types of dogs that most appear in publications of this Tweet account is the pupper and, on average, people seem to like more pictures of puppos, but retweet more pictures of doggos.

In my fourth analysis I investigated how the interactions with the We Rate Dogs Twitter have increased over the years. I realized that, for the analyzed period, the favorite counts have consistently been in an upwards trend from 2016 to mid-2017. The same does not happen to retweet counts, which seem to be in a sideways trend.

Lastly, I investigated which breeds, for the identified breeds made by the neural network with confidence over 0.9, people liked the most. It appears that the five breeds that people like the most on average are, in this order, Leonbergs, Great Pyrenees, French Bulldogs, Afghan Hounds and Pembroke.
