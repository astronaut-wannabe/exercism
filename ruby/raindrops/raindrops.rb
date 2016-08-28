class Raindrops
  def self.convert(number)
    result = ''
    result << 'Pling' if number.remainder(3).zero?
    result << 'Plang' if number.remainder(5).zero?
    result << 'Plong' if number.remainder(7).zero?
    result << number.to_s if result.length.zero?
    result
  end
end

module BookKeeping
  VERSION = 2
end
