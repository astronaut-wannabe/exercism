class Sieve
  def initialize(max)
    @max = max
    @marks = Array.new(max, true)
    @marks[0] = false
  end

  def primes
    (1..Math.sqrt(@max)).each do |n|
      mark_multiples(n) if @marks[n - 1]
    end
    res = []
    @marks.each_with_index { |n, i| res << i + 1 if n }
    res
  end

  def mark_multiples(num)
    i = 0
    until (current = num**2 + i * num) > @max
      i += 1
      @marks[current - 1] = false
    end
  end
end
