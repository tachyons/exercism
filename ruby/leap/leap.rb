class Year
  VERSION=1
  def self.leap? year
	if (year % 4 ==0) and ( (year % 100 !=0) or (year % 400 ==0))
          return true
	else
	  return false
	end
  end
end
