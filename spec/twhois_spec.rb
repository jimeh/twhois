require 'spec_helper'

describe Twhois do
  
  it "should find author's twitter account" do
    user = Twhois.lookup('jimeh')
    user.screen_name.should == "jimeh"
    user.lang.should == "en"
    user.profile_image_url.should_not be_nil
    user.name.should_not be_nil
    user.location.should_not be_nil
    user.url.should_not be_nil
    user.followers_count.should_not be_nil
    user.description.should_not be_nil
    user.time_zone.should_not be_nil
    user.profile_background_image_url.should_not be_nil
    # ...that should be enough
  end
  
  it "should return error on unknown user" do
    user = Twhois.lookup('akjsdfkjasdfasd')
    user.should be_nil
  end
  
  it "should raise an exception on invalid usernames" do
    lambda { # invalid characters
      user = Twhois.lookup("abc/damn")
    }.should raise_error(Twhois::InvalidUsername)
    
    lambda { # longer than 15 characters
      user = Twhois.lookup("abcasdjfakajsdfasdfasdfa")
    }.should raise_error(Twhois::InvalidUsername)
  end
  
end