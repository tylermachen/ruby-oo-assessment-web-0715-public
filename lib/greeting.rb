class Greeting
  attr_accessor :hour

  def initialize(hour)
    @hour = hour
  end

  def say
    case
      when morning? then "Good Morning!"
      when afternoon? then "Good Afternoon!"
      when night? then "Good Night!"
    end
  end

  def morning?
    (6..11).include?(@hour)
  end

  def afternoon?
    (12..19).include?(@hour)
  end

  def night?
    (20..24).include?(@hour) || (1..5).include?(@hour)
  end
end
