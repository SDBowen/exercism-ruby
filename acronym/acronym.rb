class String
  def initial
    self[0, 1]
  end
end

class Acronym
  def self.abbreviate(string)
    # Remove dashes from string
    string.gsub!('-',' ')
    # Split string into words array
    words = string.split
    # Get first letter of each word
    return words.map(&:initial).join.upcase
  end
end
