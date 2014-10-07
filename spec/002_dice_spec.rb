require_relative '../lib/dice.rb' # Code your solution in this file

describe "Dice" do
  describe "#roll" do
    it "should return an Integer" do
      expect(Dice.new.roll).to be_a(Integer)
    end

    it "should return a number greater than 0" do
      expect(Dice.new.roll).to be > 0
    end

    it "should return a number less than 7" do
      expect(Dice.new.roll).to be < 7
    end
  end
end
