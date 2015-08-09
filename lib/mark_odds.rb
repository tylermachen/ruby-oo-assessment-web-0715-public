class Array
  def odds?
    self.map { |i| i.odd? }
  end
end
