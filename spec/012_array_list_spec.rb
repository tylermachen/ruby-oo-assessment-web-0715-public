require_relative "../lib/array_list.rb" # Code your solution in this file

describe Array do 
  describe "#list" do
    let(:array) { ["eins", "zwei", "drei"] }

    it "should return an array" do
      expect(array.make_list).to be_a(Array)
    end

    it "should return an array with the same number of elements" do
      expect(array.make_list.length).to eq(array.length)
    end

    it "should put a number period and space before an element" do
      expect(array.make_list.first).to start_with("1. ")
    end

    it "should put a number period and space before every element" do
      expect(array.make_list).to eq(["1. eins", "2. zwei", "3. drei"])
    end
  end
end