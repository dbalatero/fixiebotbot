#!/usr/bin/env ruby

require 'rubygems'
require 'twitter'

module BotBotBot
  def search_results(last_tweet = nil)
    search = Twitter::Search.new.from('fixiebot')
    search = search.since(last_tweet) if last_tweet
    search.fetch.results
  end


end
