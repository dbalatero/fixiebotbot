#!/usr/bin/env ruby

require 'rubygems'
require 'twitter'

class BotBotBot
  def self.search_results(last_tweet = nil)
    search = Twitter::Search.new.from('fixie_bot')
    search = search.since(last_tweet) if last_tweet
    search.fetch.results
  end
end
