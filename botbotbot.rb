#!/usr/bin/env ruby

require 'rubygems'
require 'twitter'

class BotBotBot
  LAST_TWEET_FILE = 'last_tweet.txt'

  def self.search_results(last_tweet = nil)
    search = Twitter::Search.new.from('fixie_bot')
    search = search.since(last_tweet) if last_tweet
    search.fetch.results
  end

  def self.get_last_tweet
    if File.exist?(LAST_TWEET_FILE)
      File.read(LAST_TWEET_FILE).strip
    else
      nil
    end
  end

  def self.set_last_tweet(last_tweet)
    File.open(LAST_TWEET_FILE, "wb") do |fp|
      fp.write(last_tweet)
    end
  end
end
