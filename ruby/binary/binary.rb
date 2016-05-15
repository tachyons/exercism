class Binary
  VERSION = 2
  def initialize(number)
    raise ArgumentError unless number =~ /^[01]+$/
    @number = number
  end

  def to_decimal
    result = 0
    @number.reverse.chars.each_with_index do |char, index|
      result += char.to_i * 2**index
    end
    result
  end
end
