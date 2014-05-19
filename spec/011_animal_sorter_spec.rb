require 'spec_helper'
require_relative '../lib/animal_sorter.rb' # Code your solution in this file

describe AnimalSorter, '#to_a' do
  let(:animals) { ["marlin", "aardvark", "octopus", "cat", "fish", "elephant"] }

  it 'sorts sea and land animals' do
    sorted_animals = [
      ["marlin", "octopus", "fish"],
      ["aardvark", "cat", "elephant"]
    ]

    AnimalSorter.new(animals).to_a.should == sorted_animals
  end

  it 'returns sea creatures first' do
    AnimalSorter.new(animals).to_a.first.should include "marlin"
  end

  it 'returns land animals second' do
    AnimalSorter.new(animals).to_a.last.should include "aardvark"
  end

end
