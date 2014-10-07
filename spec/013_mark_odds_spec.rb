require_relative "../lib/mark_odds.rb" # Code your solution here.

describe Array do
  describe "#odds?" do
    it "should replace odd numbers with true" do
      expect([3].odds?.first).to eq(true)
    end

    it "should replace even numbers with false" do
      expect([2].odds?.first).to eq(false)
    end

    it 'should work with mixed arrays' do
      expect([2,3].odds?).to eq([false, true])
    end
  end
end
