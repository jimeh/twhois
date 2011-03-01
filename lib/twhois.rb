# encoding: utf-8

require 'rubygems'
require 'net/http'
require 'json'

require 'twhois/user'
require 'twhois/version'

module Twhois
  
  LOOKUP_HOST = "api.twitter.com"
  LOOKUP_PATH = "/1/users/show.json?screen_name="
  
  # Lookup a Twitter user by their username.
  def self.lookup(username)
    res = Net::HTTP.start(LOOKUP_HOST) { |http| http.get(LOOKUP_PATH + username) }
    if res.code == '200'
      User.new(JSON.parse(res.body))
    end
  end
  
end
