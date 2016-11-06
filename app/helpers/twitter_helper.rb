module TwitterHelper
  class Twitter

    def start_stream
      begin
        #track query must be a comma separated string
        #comma separates = OR, space separated words = AND
        $twitter_stream.filter(track: "travel blog, travelblog, travelblogger, travelphotography, trip blog, photo blog, vacation blog") do |tweet|
          user = TwitterUser.create_from_tweet_user(tweet.user, 'travel')
          if not user.nil?
            tweet_obj = TwitterTweet.create_from_tweet(tweet, user.id, 'travel')
            TwitterHashtag.create_twitter_hashtags_from_tweet(tweet, tweet_obj.id, 'travel') if not tweet_obj.nil?

            #note: these are no the user's website, but any links in the description of their bio
            entities = tweet.attrs[:user][:entities] #for some reason this doesn't always happen...
            if not entities.nil?
              bio_urls = tweet.attrs[:user][:entities][:description][:urls]
              TwitterBioUrl.create_twitter_bio_url_from_tweet(bio_urls, user.id)
            end
          end
        end
      rescue Exception => e
        start_stream #recursively calls twitter if it crashes
      end
    end
  end
end
