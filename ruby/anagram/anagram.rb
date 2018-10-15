# Anagram class name
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words_filtered = words.select { |w| anagram_size?(w) }
    words_filtered.empty? ? [] : words_filtered.select { |w| anagram_chars?(w) && word_anagram?(w) }
  end

  private

  def word_anagram?(w)
    w.downcase != @word
  end

  def anagram_chars?(w)
    w.downcase.chars.sort == @word.chars.sort
  end

  def anagram_size?(w)
    w.size == @word.size
  end
end
