require 'spec_helper'
require_relative '../lib/meal.rb' # Code your solution in this file

describe Meal,'#choice' do
  it 'should default to meat' do
    Meal.new.choice.should == "meat"
  end

  it 'should allow you to set a meal' do
    Meal.new("vegan").choice.should == "vegan"
  end
end
