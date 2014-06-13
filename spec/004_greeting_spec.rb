require 'spec_helper'
require_relative '../lib/greeting.rb' # Code your solution in this file

describe "Greeting" do
  describe '#say' do
    it 'says Good Morning! during the morning' do
      expect(Greeting.new(6).say).to eq 'Good Morning!'
    end

    it 'says Good Afternoon! during the afternoon' do
      expect(Greeting.new(15).say).to eq 'Good Afternoon!'
    end

    it 'says Good Night! during the night' do
      expect(Greeting.new(23).say).to eq 'Good Night!'
    end
  end

  describe '#morning?' do
    it 'returns true during the morning' do
      expect(Greeting.new(10).morning?).to eq(true)
    end

    it 'returns false during the night and afternoon' do
      expect(Greeting.new(22).morning?).to eq(false)
      expect(Greeting.new(14).morning?).to eq(false)
    end
  end

  describe '#afternoon?' do
    it 'returns true during the afternoon' do
      expect(Greeting.new(14).afternoon?).to eq(true)
    end

    it 'returns false during the morning and night' do
      expect(Greeting.new(8).afternoon?).to eq(false)
      expect(Greeting.new(22).afternoon?).to eq(false)
    end
  end

  describe '#night?' do
    it 'returns true during the night' do
      expect(Greeting.new(22).night?).to eq(true)
    end

    it 'returns false during the morning and afternoon' do
      expect(Greeting.new(8).night?).to eq(false)
      expect(Greeting.new(14).night?).to eq(false)
    end
  end
end
