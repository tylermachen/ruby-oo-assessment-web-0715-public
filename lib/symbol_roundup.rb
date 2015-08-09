class Array
  def symbol_roundup
    self.select { |elem| elem.is_a? Symbol }
  end
end
