class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :twitter_user, index: true, foreign_key: true, null: false
      t.string :twitter_id
      t.string :text
      t.string :lang
      t.integer :retweet_count
      t.integer :favorite_count
      t.timestamps null: false
    end
  end
end
