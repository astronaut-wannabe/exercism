class Pangram
  def self.is_pangram?(str)
    return false if str.length < 26
    normalized_str = str.downcase

    ('a'..'z').all? { |char| normalized_str.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end
