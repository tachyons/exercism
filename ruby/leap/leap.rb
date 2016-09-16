class Year
  VERSION = 1
  def self.leap?(year)
    if (year % 4).zero? && ((year % 100).nonzero? || (year % 400).zero?)
      return true
    else
      return false
    end
  end
end
