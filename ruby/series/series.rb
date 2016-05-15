class Series
  def initialize(string)
    @string = string
  end

  def slices(count)
    raise ArgumentError if count > @string.length
    @string.chars.collect(&:to_i).each_cons(count).to_a
  end
end
