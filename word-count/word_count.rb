class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = @phrase.downcase.gsub(/( '|' )/, ' ').split(/[^'\w]+/)
    counted_words = {}

    words.each do |word|
      next if counted_words.key?(word)
      counted_words[word] = 0
      words.each do |current_word|
        counted_words[word] += 1 if word == current_word
      end
    end
    counted_words
  end
end
