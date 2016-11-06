class CreateBioUrls < ActiveRecord::Migration
  def change
    create_table :bio_urls do |t|
      t.string :url,  null: false
      t.references :twitter_user
      t.timestamps null: false
    end
  end
end
