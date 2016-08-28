class Complement
  DNA_TO_RNA = {
    'A' => 'U',
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
  }

  def self.of_dna(dna_strand)
    dna_strand.chars.map { |n| DNA_TO_RNA.fetch(n) { return '' } }.join
  end
end

module BookKeeping
  VERSION = 4
end
