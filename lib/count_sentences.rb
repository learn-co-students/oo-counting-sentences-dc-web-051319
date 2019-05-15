require 'pry'

class String

    def sentence?
        self.end_with?('.')
    end

    def question?   
        self.end_with?('?')
    end

    def exclamation?    
        self.end_with?('!')
    end

    def count_sentences(count=0)  
        self.split.each_with_object(count=0) do |word|
            word.question? || word.exclamation? || word.sentence? ? count += 1 : nil
        end
        count
    end

end
