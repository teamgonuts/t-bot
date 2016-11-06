class CreateTweetHashtags < ActiveRecord::Migration
  def change
    create_table :tweet_hashtags do |t|
      t.references :twitter_tweet, index: true, foreign_key: true, null: false
      t.references :twitter_hashtag, index: true, foreign_key: true, null: false
      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
