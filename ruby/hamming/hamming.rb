class Hamming
  def self.compute(s1, s2)
    raise ArgumentError if s1.length != s2.length
    s1.bytes.zip(s2.bytes).count { |pair| pair[0] != pair[1] }
  end
end

module BookKeeping
  VERSION = 3
end
