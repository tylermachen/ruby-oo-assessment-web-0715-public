class Person
  def initialize(age)
    @age = age
  end

  def is_a_teenager?
    @age.between?(13, 19)
  end
end
