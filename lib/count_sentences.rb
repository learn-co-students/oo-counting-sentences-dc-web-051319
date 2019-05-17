require 'pry'

class String

  @@count = 0
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
    array.delete_if do |char|
      char == ""
    end
    return array.length

    # array.each do |char|
    #   if char == "." || char == "?" || char == "!"
    #     @@count+=1
    #
    #   end
    # end
    # return @@count
  end
end
