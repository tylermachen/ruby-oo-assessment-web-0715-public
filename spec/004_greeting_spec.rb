require 'spec_helper'
require_relative '../lib/greeting.rb' # Code your solution in this file

describe Greeting, '#say' do
  it 'should say Good Morning! during the morning' do
    Greeting.new(6).say.should eq 'Good Morning!'
  end

  it 'should say Good Afternoon! during the afternoon' do
    Greeting.new(15).say.should eq 'Good Afternoon!'
  end

  it 'should say Good Night! during the night' do
    Greeting.new(23).say.should eq 'Good Night!'
  end
end

describe Greeting, '#morning?' do
  it 'should return true during the morning' do
    Greeting.new(10).morning?.should be_true
  end

  it 'should return false during the night and afternoon' do
    Greeting.new(22).morning?.should be_false
    Greeting.new(14).morning?.should be_false
  end
end

describe Greeting, '#afternoon?' do
  it 'should return true during the afternoon' do
    Greeting.new(14).afternoon?.should be_true
  end

  it 'should return false during the morning and night' do
    Greeting.new(8).afternoon?.should be_false
    Greeting.new(22).afternoon?.should be_false
  end
end

describe Greeting, '#night?' do
  it 'should return true during the night' do
    Greeting.new(22).night?.should be_true
  end

  it 'should return false during the morning and afternoon' do
    Greeting.new(8).night?.should be_false
    Greeting.new(14).night?.should be_false
  end
end
