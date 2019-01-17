class Complement
  def self.of_dna(dna)
    dna.chars.map do |char|
      case char
      when 'G'
        'C'
      when 'C'
        'G'
      when 'T'
        'A'
      when 'A'
        'U'
      end
    end.join
  end
end
