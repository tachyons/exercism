class Array
  def accumulate
    return self unless block_given?
    result = []
    for element in self
      result << (yield element)
    end
    result
  end
end
