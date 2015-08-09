class Temperature
  attr_accessor :temp

  def initialize(temp)
    @temp = temp
  end

  def status
    case
      when @temp < 18 then "cold"
      when @temp.between?(18, 21) then "comfortable"
      when @temp > 21 then "hot"
    end
  end
end
