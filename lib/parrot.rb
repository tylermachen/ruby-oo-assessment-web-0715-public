class Parrot
  attr_accessor :phrase

  def initialize
    @phrase = "Squawk!"
  end

  def speak
    puts @phrase
  end
end
