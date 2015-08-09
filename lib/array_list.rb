class Array
  def make_list
    self.map.with_index(1) { |e, i| "#{i}. #{e}" }
  end
end
