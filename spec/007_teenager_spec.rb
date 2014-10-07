require_relative '../lib/teenager.rb' # Code your solution in this file

describe "Person" do
  describe "#is_a_teenager?" do
    it "returns false if the person is younger than 13" do
      expect(Person.new(12).is_a_teenager?).to eq(false)
    end

    it "returns false if the person is older than 19" do
      expect(Person.new(20).is_a_teenager?).to eq(false)
    end

    it "returns true if the person is between the ages of 13 and 19" do
      expect(Person.new(15).is_a_teenager?).to eq(true)
    end
  end
end