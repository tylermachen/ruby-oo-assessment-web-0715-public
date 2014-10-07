require_relative '../lib/meal.rb' # Code your solution in this file

describe "Meal" do
  describe '#choice' do
    it 'should default to meat' do
      expect(Meal.new.choice).to eq "meat"
    end

    it 'should allow you to set a meal' do
      expect(Meal.new("vegan").choice).to eq "vegan"
    end
  end
end
