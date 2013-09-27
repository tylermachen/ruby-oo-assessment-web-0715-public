require_relative '../spec_helper'
require_relative './temperature_bot.rb' # Code your solution in this file

describe '#temperature_bot' do
  it 'is comfortable at room temperature' do
    temperature_bot(18).should be 'comfortable'
    temperature_bot(21).should be 'comfortable'
  end

  it 'is hot above room temperature' do
    temperature_bot(22).should be 'hot'
  end

  it 'is cold below room temperature' do
    temperature_bot(14).should be 'cold'
  end
end