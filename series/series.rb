class Series
  def initialize(string)
    @string = string
  end

  

  def slices(num)
    raise ArgumentError if (num > @string.length)
    
    sliced_series = []
    
    @string.chars.each_with_index do |_char, index|
      current_slice = @string.slice(index, num)
      
      if (current_slice.length == num)
        sliced_series << current_slice
      end
    end

    sliced_series
  end
  
end

# @string.chars.each_slice(num).map(&:join)
