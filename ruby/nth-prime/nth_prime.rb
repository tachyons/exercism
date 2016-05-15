class Prime
  def self.nth n
	raise ArgumentError if n <=0
	count=0
	number=1
	while count <  n
		count+=1 if is_prime(number)
		number+=1
	end
	return number-1
  end
  def is_prime(n)
    if n <= 1
        return false
    elsif n <= 3
        return true
    elsif n % 2 == 0 or n % 3 == 0
        return false
    end
    i=5
    while i**2 <= n
        if n % i == 0 or n % (i + 2) == 0
            return false
        end
        i = i + 6
    end
    return true
  end
end

