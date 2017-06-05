module FunWithStrings
  def palindrome?
    self.gsub!(/(\W|\d)/, "")
    self.downcase!
    if self.reverse == self
      return true
    else
      return false
    end
  end
  def count_words
    words = self.split(" ")
    words.each do |word|
      word.downcase!
      word.gsub!(/[^a-z]/, "")
    end
    words.delete("")
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1}
    return frequency
  end
  def anagram_groups
       final = Array.new(0)
       words = self.split(" ")
       words.each do |word|
         place = []
          words.each do |word2|
            if (word.downcase.split("").sort == word2.downcase.split("").sort)
              place.push(word2)
            end
          end
          final.push(place)
        end
              
      return final
         
         
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
