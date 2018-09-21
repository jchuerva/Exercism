class Phrase
  def initialize(sentence)
    @sentence = sentence.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @sentence.each_with_object(Hash.new(0)) { |word, acc| acc[word] += 1 }
    # @h = Hash.new
    # @sentence.each { |w| update_hash(w) }
    # @h
  end

  # private

  # def update_hash(word)
  #   @h.key?(word) ? @h[word] += 1 : @h[word] = 1
  # end
end
