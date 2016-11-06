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
      t.timestamps null: false
    end
  end
end
