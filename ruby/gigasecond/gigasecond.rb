class Gigasecond
  def self.from(time)
    (time + 10**9).utc
  end
end

module BookKeeping
  VERSION = 3
end
