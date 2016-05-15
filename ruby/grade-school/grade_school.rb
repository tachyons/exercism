class School
  VERSION = 1
  def initialize
    @student_hash = Hash.new { |h, k| h[k] = [] }
  end

  def add(name, grade)
    @student_hash[grade] << name
    @student_hash[grade] = @student_hash[grade].sort
  end

  def grade(grade)
    @student_hash[grade]
  end

  def to_h
    @student_hash.sort.to_h
  end
end
