class Pangram
  VERSION = 1
  CHARS = Array('a'..'z')
  def self.is_pangram?(string)
    CHARS.each do |char|
      return false unless string.downcase.include? char
    end
    true
  end
end
