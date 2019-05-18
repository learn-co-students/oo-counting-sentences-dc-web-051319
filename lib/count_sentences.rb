require 'pry'

class String

  def sentence?
    if self.split()[-1][-1] == "." 
      true 
    else
      false
    end
  end

  def question?
     if self.split()[-1][-1] == "?" 
      true 
    else
      false
    end
  end

  def exclamation?
     if self.split()[-1][-1] == "!" 
      true 
    else
      false
    end
  end
  
  def count_sentences
    arr=[]
      self.split.each do |sentence|
        if ["?",".","!"].include?(sentence[-1])
          arr.push(sentence[-1])
        end
      end
    arr.size
  end 
end 
    