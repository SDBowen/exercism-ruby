class Series
  attr_reader :digits
  
  def initialize(digits)
    @digits = digits
  end

  def slices(num_of_slices)
    raise ArgumentError.new('Slices is greater than digits available.') if num_of_slices > digits.length

    sliced_series = []

    digits.chars.each_with_index do |_char, index|
      current_slice = digits.slice(index, num_of_slices)

      sliced_series << current_slice if current_slice.length == num_of_slices
    end

    sliced_series
  end
end
