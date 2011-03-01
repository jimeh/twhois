# encoding: utf-8

module Twhois
  # Kinda acts like the Hashie gem
  class User
    
    def initialize(hash)
      hash.keys.each do |key|
        self.class.send(:attr_accessor, key.to_sym)
        self.send("#{key}=", hash[key])
      end
    end
    
  end
end
