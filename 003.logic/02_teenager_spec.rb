require_relative '../spec_helper'
require_relative './teenager.rb' # Code your solution in this file

describe Person, "#is_a_teenager?" do
  it "returns false if the person is younger than 13" do
    Person.new(12).is_a_teenager?.should eq(false)
  end

  it "returns false if the person is older than 19" do
    Person.new(20).is_a_teenager?.should eq(false)
  end

  it "returns true if the person is between the ages of 13 and 19" do
    Person.new(15)is_a_teenager?.should eq(true)
  end
end