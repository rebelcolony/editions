require 'spec_helper'

describe Gig do
  before(:each) do

  @valid_attributes = {
    :title => "value for club",
    :venue => "value for venue",
    :description => "value for description",
    :city => "value for city",
    :country => "value for country",
    :map => "value for map",
    :date => Time.now
  
}

end
 
  it "should create a new instance given valid attributes" do
    Gig.create!(@valid_attributes)
  end
  
  it "should fail when title is missing" do
    @valid_attributes.delete(:title)
    lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end

  it "should fail when venue is missing" do
    @valid_attributes.delete(:venue)
    lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end

# it "should not allow dates in the past" do
#    @valid_attributes[:date] = 1.day.ago
#    lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
#  end

#  it "should not allow dates more than 1 year in the future" do
#    @valid_attributes[:date] = 13.months.from_now
#    lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)

#    @valid_attributes[:date] = 12.months.from_now - 1.day
#    lambda { @gig = Gig.create!(@valid_attributes) }.should_not raise_error(ActiveRecord::RecordInvalid)
#  end

  it "should fail without city" do
    @valid_attributes.delete(:city)
    lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end

  it "should fail without country" do
    @valid_attributes.delete(:venue)
    lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end
  
  it "should fail without description" do
    @valid_attributes.delete(:description)
    lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
  end
  
  it "should fail without map" do
     @valid_attributes.delete(:map)
     lambda { @gig = Gig.create!(@valid_attributes) }.should raise_error(ActiveRecord::RecordInvalid)
   end

end