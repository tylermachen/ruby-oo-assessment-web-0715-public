require_relative '../spec_helper'
require_relative './dog.rb' # Code your solution in this file

describe Dog do
  let(:fido) {Dog.new}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  it 'should be able to instantiate a new dog' do
    fido.should be_a Dog
  end

  it 'should have a name' do
    fido.name = "Fido"
    fido.name.should eq("Fido")
  end

   it "should be able to bark it's name" do
    fido.name = "Fido"

    # STDOUT is a constant that ruby defines for you
    # that represents 'output' so that you can test
    # against puts and Input/Output (IO) methods
    STDOUT.should_receive(:puts).with("Fidowoof!")
    fido.bark
  end
end