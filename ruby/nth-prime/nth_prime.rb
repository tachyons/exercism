class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0
    count = 0
    number = 1
    while count < n
      count += 1 if is_prime(number)
      number += 1
    end
    number - 1
  end

  def is_prime(n)
    if n <= 1
      return false
    elsif n <= 3
      return true
    elsif n.even? || (n % 3).zero?
      return false
    end
    i = 5
    while i**2 <= n
      return false if (n % i).zero? || (n % (i + 2)).zero?
      i += 6
    end
    true
  end
end
