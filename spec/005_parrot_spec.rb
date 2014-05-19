require 'spec_helper'
require_relative '../lib/parrot.rb' # Code your solution in this file

describe Parrot do
  
  describe '#phrase' do
    it 'should return the default phrase' do
      parrot = Parrot.new
      parrot.phrase.should == 'Squawk!'
    end
      
    it 'should return the given phrase' do
      parrot = Parrot.new
      parrot.phrase = 'Pretty bird!'
  
      parrot.phrase.should == "Pretty bird!"
    end
  end

  describe '#speak' do
    it 'should say "Squawk!" by default' do
      # $stdout is a global variable that represents the console IO
      # just like the constant STDOUT
      $stdout.should_receive(:puts).with("Squawk!")
  
      Parrot.new.speak
    end
  
  
    it 'should output the given phrase' do
      parrot = Parrot.new
      parrot.phrase = "Pretty bird!"
  
      $stdout.should_receive(:puts).with("Pretty bird!")
  
      parrot.speak
    end
  end
end
