class FlattenArray
  def self.flatten(array)
    flattened_array = array.flatten

    flattened_array.each do |item|
      flattened_array.delete(item) if item.nil?
    end

    flattened_array
  end
end

# ([0, 2, [[2, 3], 8, 100, 4, [[[50]]]], -2])
