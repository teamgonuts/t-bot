class CreateTweetHashtags < ActiveRecord::Migration
  def change
    create_table :tweet_hashtags do |t|

      t.timestamps null: false
    end
  end
end
