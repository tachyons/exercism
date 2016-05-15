class Phrase
  VERSION = 1
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    word_hash = {}
    @phrase.split(/[\s,]/).each do |word|
      word = word.gsub(/[^a-z0-9\'\s]/i, '').gsub(/\A'|'\Z/, '')
      count = (word_hash[word] || 0) + 1
      word_hash.merge!(word => count) unless word.empty?
    end
    word_hash
  end
end
