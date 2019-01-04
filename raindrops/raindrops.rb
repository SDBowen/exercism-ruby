class Raindrops
  def self.convert(number)
    rain_sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

    message = ''

    rain_sounds.each do |factor, sound|
      message << sound if (number % factor).zero?
    end

    message << number.to_s if message.empty?

    message
  end
end
