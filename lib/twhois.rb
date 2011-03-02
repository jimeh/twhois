# encoding: utf-8

require 'rubygems'
require 'net/http'
require 'json'

require 'twhois/user'
require 'twhois/version'

module Twhois
  
  LOOKUP_HOST = "api.twitter.com"
  LOOKUP_PATH = "/1/users/show.json?screen_name="
  
  class InvalidUsername < StandardError; end
  
  # Lookup a Twitter user by their username.
  def self.lookup(username)
    raise InvalidUsername, "Username is invalid" unless valid_username?(username)
    res = Net::HTTP.start(LOOKUP_HOST) { |http| http.get(LOOKUP_PATH + username) }
    if res.code == '200'
      User.new(JSON.parse(res.body))
    end
  end
  
  def self.valid_username?(username)
    return false if username.match(/^[a-zA-Z0-9_]{1,15}$/).nil?
    return true
  end
  
end
