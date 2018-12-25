class Acronym
  # Return first letter of each word
  def self.abbreviate(string)
    return string.scan(/\b\w/).join.upcase
  end
end
