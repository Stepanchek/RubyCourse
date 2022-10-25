def sort(array)
  result = Array.new(array.length)

  cur_idx = 0

  for i in 0...array.length
    if array[i] == 0
      result[cur_idx] = array[i]
      cur_idx += 1
    end
  end

  for i in 0...array.length
    if array[i] < 0
      result[cur_idx] = array[i]
      cur_idx += 1
    end
  end

  for i in 0...array.length
    if array[i] > 0
      result[cur_idx] = array[i]
      cur_idx += 1
    end
  end

  result
end


input_array = Array.new(13) {rand(-10..10)}
puts "Input : #{input_array}"
puts "Output :  #{sort(input_array)}"
