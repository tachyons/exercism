class Robot
  VERSION = 1
  DIGITS = Array('1'..'9')
  CHARS = Array('A'..'Z')
  attr_reader :name
  @@names = []
  def initialize
    @name = random_name
  end

  def reset
    @name = random_name
  end

  private

  def random_name
    name = CHARS.sample(2).join + DIGITS.sample(3).join
    if @@names.include? name
      random_name
    else
      @@names << name
      return name
    end
  end
end
