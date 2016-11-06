# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161106043746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bio_urls", force: :cascade do |t|
    t.string   "url",             null: false
    t.integer  "twitter_user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "hashtags", force: :cascade do |t|
    t.string   "hashtag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweet_hashtags", force: :cascade do |t|
    t.integer  "tweet_id",   null: false
    t.integer  "hashtag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tweet_hashtags", ["hashtag_id"], name: "index_tweet_hashtags_on_hashtag_id", using: :btree
  add_index "tweet_hashtags", ["tweet_id"], name: "index_tweet_hashtags_on_tweet_id", using: :btree

  create_table "tweets", force: :cascade do |t|
    t.integer  "twitter_user_id", null: false
    t.string   "twitter_id"
    t.string   "text"
    t.string   "lang"
    t.integer  "retweet_count"
    t.integer  "favorite_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "tweets", ["twitter_user_id"], name: "index_tweets_on_twitter_user_id", using: :btree

  create_table "twitter_users", force: :cascade do |t|
    t.string   "name"
    t.string   "screen_name"
    t.string   "twitter_id"
    t.text     "bio"
    t.string   "location"
    t.string   "website"
    t.string   "lang"
    t.integer  "followers"
    t.integer  "following"
    t.integer  "tweets"
    t.decimal  "twitter_users",             default: 0.0, null: false
    t.decimal  "following_followers_ratio", default: 0.0, null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tweet_hashtags", "hashtags"
  add_foreign_key "tweet_hashtags", "tweets"
  add_foreign_key "tweets", "twitter_users"
end
