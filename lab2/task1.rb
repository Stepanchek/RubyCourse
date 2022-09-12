Point = Struct.new(:x, :y)

$points_array = Array.new

$points_array.push((Point.new 42,  51),
                   (Point.new 76, 48),
                   (Point.new 117, 48),
                   (Point.new 150, 42),
                   (Point.new 204, 41),
                   (Point.new 228, 85),
                   (Point.new 240, 133),
                   (Point.new 243, 193),
                   (Point.new 272, 221),
                   (Point.new 265, 275),
                   (Point.new 204, 274),
                   (Point.new 149, 271),
                   (Point.new 103, 261),
                   (Point.new 75,  229),
                   (Point.new 93,  172),
                   (Point.new 84,  149),
                   (Point.new 48,  134),
                   (Point.new 26,  107),
                   (Point.new 26,  86),
                   (Point.new 27,  71),
                   (Point.new 37,  57))
def square(array)
  result = 0
  for i in 0...array.length do
    unless i == array.length-1
      result += (array[i].x + array[i + 1].x) * (array[i].y - array[i + 1].y)
    else
      result += (array[i].x + array[0].x) * (array[i].y - array[0].y)
    end
  end

  0.5 * (result).abs
end

puts "Square is: #{square($points_array)}"
