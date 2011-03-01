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
    user = Twhois.lookup('jimehoawhefoahelfhasdf')
    user.should be_nil
  end
  
end