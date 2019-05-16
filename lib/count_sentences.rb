require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = [". ", "? ", "! "]
    self.split(Regexp.union(delimiters)).count
    # or
    # self.split(/\.\s|\?\s|\!\s/).count
  end
end