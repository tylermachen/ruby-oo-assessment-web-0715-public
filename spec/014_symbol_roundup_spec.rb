require "spec_helper"
require_relative "../lib/symbol_roundup.rb" # Code your solution here.

describe Array do 
  describe "#symbol_roundup" do

    let(:array) { [:sym1, :sym2, 3, "hello", {:sym3=>:poop}, [:sym4], :sym5] }

    it "should return an array with only symbols in it" do
      expect(array.symbol_roundup).to eq([:sym1, :sym2, :sym5])
    end

    it "should not modify the original array" do
      array.symbol_roundup
      expect(array).to eq([:sym1, :sym2, 3, "hello", {:sym3=>:poop}, [:sym4], :sym5])
    end
  end
end