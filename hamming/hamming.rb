class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError if strand_one.length != strand_two.length

    hamming_distance = 0

    strand_one.each_char.with_index do |char, index|
      hamming_distance += 1 if char != strand_two[index]
    end

    hamming_distance
  end
end
