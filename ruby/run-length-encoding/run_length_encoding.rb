class RunLengthEncoding
  VERSION = 1
  def self.encode(string)
    previous_char = string[0]
    count = 1
    result = ''
    string.slice!(0)
    string.chars.each_with_index do |char, _index|
      if char == previous_char
        count += 1
      else
        result += count == 1 ? previous_char : count.to_s + previous_char
        previous_char = char
        count = 1
      end
    end
    result += count == 1 ? string[-1] : count.to_s + string[-1]
  end

  def self.decode(string)
    string.strip.scan(/(\d*)(\D)/).collect { |length, char| char * (length.to_i.zero? ? 1 : length.to_i) }.join
  end
end
