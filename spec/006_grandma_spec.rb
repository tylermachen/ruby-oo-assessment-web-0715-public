require_relative '../lib/grandma.rb' # Code your solution in this file

describe "Grandma" do
  describe '#speak_to' do
    let(:grandma){Grandma.new}
    
    it 'responds with HUH?!  SPEAK UP, SONNY! unless you are shouting' do
      expect(Grandma.new.speak_to('Hi Nana, how are you?')).to eq 'HUH?!  SPEAK UP, SONNY!'
    end

    it 'responds with NO, NOT SINCE 1938! when she can hear you' do
      expect(Grandma.new.speak_to('WHAT DID YOU EAT TODAY?')).to eq "NO, NOT SINCE 1938!"
    end  
  end
end
