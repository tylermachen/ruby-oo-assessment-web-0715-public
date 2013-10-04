require_relative "../spec_helper"
require_relative "./mark_odds.rb" # Code your solution here.

describe Array,"#odds?" do
  
  it "should replace odd numbers with true" do
    [3].odds?.first.should eq(true)
  end

  it "should replace even numbers with false" do
    [2].odds?.first.should eq(false)
  end

  it 'should work with mixed arrays' do
    [2,3].odds?.should eq([false, true])
  end

end
