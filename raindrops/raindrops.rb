class Raindrops
  def self.convert(number)
    rain_sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

    message = rain_sounds.map { |factor, sound|
       sound if (number % factor).zero? }.join
      
    message << number.to_s if message.empty?

    message
  end
end
