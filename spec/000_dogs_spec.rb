require 'spec_helper'
require_relative '../lib/dog.rb' # Code your solution in this file

describe "Dog" do
  let(:fido) {Dog.new}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  it 'is able to instantiate a new dog' do
    expect(fido).to be_a Dog
  end

  it 'should have a name' do
    fido.name = "Fido"
    expect(fido.name).to eq("Fido")
  end

   it "should be able to bark it's name" do
    fido.name = "Fido"

    # STDOUT is a constant that ruby defines for you
    # that represents 'output' so that you can test
    # against puts and Input/Output (IO) methods
    expect(STDOUT).to_receive(:puts).with("Fidowoof!")
    fido.bark
  end
end
