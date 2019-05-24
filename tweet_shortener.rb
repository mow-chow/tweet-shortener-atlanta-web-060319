# Write your code here.
def dictionary
  substitute = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word| #iterating over the passed tweet array
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |t|
    puts word_substituter(t)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |t|
    if t.length > 140
      word_substituter(t)
    elsif t.length <= 140
      t
    end
  end
end


def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |t|
    if t.length > 140
      word_substituter(t)[0..140] + "..."
    else
        t
end
end.join(" ")
end
end
