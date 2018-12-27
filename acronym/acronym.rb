class Acronym
  def self.abbreviate(string)
    first_letters = "\b\w"
    
    string.scan(/#{first_letters}/).join.upcase
  end
end

puts Acronym.abbreviate('A Test')
puts 'done'