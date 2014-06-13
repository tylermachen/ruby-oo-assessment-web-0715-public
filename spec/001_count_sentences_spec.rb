require 'spec_helper'
require_relative '../lib/count_sentences.rb' # Code your solution in this file

describe String do
  describe "#count_sentences" do

    it  "returns the number of sentences in a string" do
      expect("one. two. three?".count_sentences).to eq(3)
    end

    it "returns zero if there are no sentences in a string" do
      expect("".count_sentences).to eq(0)
    end
  end
end
