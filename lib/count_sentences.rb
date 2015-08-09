class String
  def count_sentences
    self.split(/\w.\s/).count
  end
end
