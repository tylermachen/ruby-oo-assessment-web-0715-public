class AnimalSorter
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]
  SEA_CREATURES = ["marlin", "octopus", "fish"]

  def initialize(animals)
    @animals = animals
  end

  def to_a
    @animals.partition { |animal| SEA_CREATURES.include?(animal) }
  end
end
