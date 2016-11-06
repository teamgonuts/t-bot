class CreateTwitterUsers < ActiveRecord::Migration
  def change
    create_table :twitter_users do |t|
      t.string :name
      t.string :screen_name
      t.string :twitter_id
      t.text :bio
      t.string :location
      t.string :website
      t.string :lang
      t.integer :followers
      t.integer :following
      t.integer :tweets
      t.decimal :twitter_users, :following_followers_ratio, null:false, default: 0.0
      t.timestamps null: false
    end
  end
end
