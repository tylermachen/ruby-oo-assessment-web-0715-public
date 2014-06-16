require 'spec_helper'
require_relative '../lib/parrot.rb' # Code your solution in this file

describe "Parrot" do
  describe '#phrase' do
    it 'returns the default phrase' do
      parrot = Parrot.new
      expect(parrot.phrase).to == 'Squawk!'
    end
      
    it 'returns the given phrase' do
      parrot = Parrot.new
      parrot.phrase = 'Pretty bird!'
  
      expect(parrot.phrase).to == "Pretty bird!"
    end
  end

  describe '#speak' do
    it 'says "Squawk!" by default' do
      # $stdout is a global variable that represents the console IO
      # just like the constant STDOUT
      expect($stdout).to receive(:puts).with("Squawk!")
  
      Parrot.new.speak
    end
  
    it 'outputs the given phrase' do
      parrot = Parrot.new
      parrot.phrase = "Pretty bird!"
  
      expect($stdout).to receive(:puts).with("Pretty bird!")
  
      parrot.speak
    end
  end
end
