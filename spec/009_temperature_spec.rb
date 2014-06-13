require 'spec_helper'
require_relative '../lib/temperature.rb' # Code your solution in this file

describe "Temperature" do
  describe '#status' do
    it 'is comfortable at room temperature' do
      expect(Temperature.new(18)).status.to == 'comfortable'
      expect(Temperature.new(21)).status.to == 'comfortable'
    end

    it 'is hot above room temperature' do
      expect(Temperature.new(22)).status.to == 'hot'
    end

    it 'is cold below room temperature' do
      expect(Temperature.new(14)).status.to == 'cold'
    end
  end
end
