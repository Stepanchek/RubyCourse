require 'matrix'
def generate_matrix(r,c)
  Matrix.build(r,c) do |i,j|
    i == j ? i : rand(20)
  end
end

def print_matrix(matrix)
  for i in 0...matrix.row_count
    for j in 0...matrix.column_count
      print matrix[i,j].to_s + " "
    end
    puts
  end
end

def matrix_trace(matrix)
  sum = 0
  for i in 0...matrix.row_count
    for j in 0...matrix.column_count
      if (i == j)
        sum += matrix[i][j]
      end
    end
  end
end

$size = 8
matrix = generate_matrix($size,$size)

puts "Matrix"
print_matrix(matrix)
puts "Output : #{matrix_trace(matrix)}"