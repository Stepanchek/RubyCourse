def sort(array)
  result = []

  array.each do | value |
    if(value == 0)
      result.append(value)
    end
  end
  array.each do | value |
    if(value < 0)
      result.append(value)
    end
  end
  array.each do | value |
    if(value > 0)
      result.append(value)
    end
  end

  result
end


input_array = Array.new(13) {rand(-10..10)}
puts "Input : #{input_array}"
puts "Output :  #{sort(input_array)}"
