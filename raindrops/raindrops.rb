require 'prime'

class Raindrops
  def self.convert(number)
    prime_numbers = number.prime_division.map(&:first)
    message = ''

    prime_numbers.each do |num|
      message << 'Pling' if num == 3
      message << 'Plang' if num == 5
      message << 'Plong' if num == 7
    end

    message << number.to_s if message.empty?

    return message
  end
end
