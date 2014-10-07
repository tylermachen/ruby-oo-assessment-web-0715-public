require_relative '../lib/temperature.rb' # Code your solution in this file

describe "Temperature" do
  describe '#status' do
    it 'is comfortable at room temperature' do
      expect(Temperature.new(18).status).to eq('comfortable')
      expect(Temperature.new(21).status).to eq('comfortable')
    end

    it 'is hot above room temperature' do
      expect(Temperature.new(22).status).to eq('hot')
    end

    it 'is cold below room temperature' do
      expect(Temperature.new(14).status).to eq('cold')
    end
  end
end
