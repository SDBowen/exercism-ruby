class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length

    strand_one.each_char.with_index.count do |char, index|
      char != strand_two[index]
    end
  end
end
