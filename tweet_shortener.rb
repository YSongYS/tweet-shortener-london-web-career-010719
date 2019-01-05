# Write your code here.
def dictionary (lookup)
  replace = lookup
  dictionary = {
    "hello" => 'hi',
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    'you' => "u",
    "at" => "@",
    "and" => "&"}
  dictionary.each do |key,value|
    replace = value if key == lookup
  end
  replace
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ").collect{|word| word=dictionary(word)}.join(" ")
  new_tweet
end

def bulk_tweet_shortener(tweets)
  i=0
  new_tweets = []
  while i<tweets.size do
    new_tweets[i] = word_substituter(tweets[i])
    i += 1
  end
  puts new_tweets
end

bulk_tweet_shortener(["you and me", "me and you"])
word_substituter("you and me")
