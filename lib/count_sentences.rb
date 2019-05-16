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
    self.split(/\.|\?|\!/).delete_if {|word|
      word.size < 2}.size
# you may be wondering what the hell is going on here
# well to start off I chose the self operator so the whatever string they want to know will be itself.
# second, I use the .split operator to split the string into an array by using the (".", ",", "!")
# I did that by using "/" to open the parameters of how I want to split the array.
# Then I used "\" to choose specifically what to separate the strings by. in this case it was the period.
# After that I used "|" to add another parameter to split the strings into the array. which I put in front of the question mark and the exclamation point.
#then to close it all I used "/"
#after setting the parameters to split the string I used "delete_if" to say, "please delete if a word is less than the size of 2."
# then I returned the amount of sentences. 
    end
  end
