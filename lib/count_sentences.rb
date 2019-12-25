require 'pry'

class String
  def sentence?
    if self.split('').pop == "."
      return true
    else
      return false
    end
  end

  def question?
    if self.split('').pop == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.split('').pop == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    array = self.split(/[.?!]/)
    array.delete_if { |char| char == ""}
     array.length
  end
end
