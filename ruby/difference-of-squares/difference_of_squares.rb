class Squares
  def initialize(n)
    @max = n
  end

  def square_of_sum
    @sq_of_sum ||= (0..@max).reduce(:+)**2
  end

  def sum_of_squares
    @sum_of_sq ||= (0..@max).inject(0) { |a, e| a + e**2 }
  end

  def difference
    @difference ||= square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
