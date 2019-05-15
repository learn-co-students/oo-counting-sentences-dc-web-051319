require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    array = self.split(" ")

    sentence_count = 0
    array.each do |item|
      if item.sentence? || item.question? || item.exclamation?
        sentence_count += 1
      end
    end
    return sentence_count
  end
end