require_relative '../spec_helper'
require_relative '../lib/temperature.rb' # Code your solution in this file

describe Temperature, '#status' do
  it 'is comfortable at room temperature' do
    Temperature.new(18).status.should == 'comfortable'
    Temperature.new(21).status.should == 'comfortable'
  end

  it 'is hot above room temperature' do
    Temperature.new(22).status.should == 'hot'
  end

  it 'is cold below room temperature' do
    Temperature.new(14).status.should == 'cold'
  end
end
