require 'pry'

class String

  def sentence?
    self.split("").last=="." ? true : false
  end

  def question?
  self.split("").last=="?" ? true : false
  end

  def exclamation?
    self.split("").last=="!" ? true : false
  end

  def count_sentences
    count = 0
    self.split.each do |words|
        if words.sentence? || words.question? || words.exclamation?
          count+=1
        end
    end
    count
  end
end
