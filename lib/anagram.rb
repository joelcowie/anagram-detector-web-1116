require 'pry'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(new_words)
    matching_words = []
    new_words.each do |word|
      if word.split("").sort == @word.split("").sort
        matching_words << word.split(" ")
      end
    end
    return matching_words.flatten
  end
end
