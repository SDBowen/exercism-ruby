class Raindrops
  def self.convert(number)
    message = ''

    message << 'Pling' if (number % 3).zero?
    message << 'Plang' if (number % 5).zero?
    message << 'Plong' if (number % 7).zero?

    message << number.to_s if message.empty?

    message
  end
end
