class Sieve
  def initialize number
    @number = number
    @array = (2..@number).to_a
  end
  def primes
    return @array if @number <= 2
    p = 2
    n = 2
    begin
      @array.delete n*p
      n+=1
      if n*p < @array.last !=@array.last
       p=@array[@array.index(p)]
       n=2
      end
    end while @array.last > n*p
    @array
  end
end
