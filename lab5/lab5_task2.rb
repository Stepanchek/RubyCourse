def evaluate_sum(func, x, i = 0, n = 0, eps = 0.001)
  sum = 0
  if n != 0
    (i..n).each do |num|
      sum += func.call(x, num)
    end
  else
    prev_sum = -1
    while (sum - prev_sum).abs > eps
      prev_sum = sum
      sum += func.call(x, i)
      i += 1
    end
  end

  sum
end

func = lambda { |x, i|
  ((-1)**i)*((x**(2*i+1))/(2*i+1))
}

x = 1
n = 50

puts "Infinity sum : #{evaluate_sum(func, x)}"
puts "Sum to n = #{n} : #{evaluate_sum(func, x, 0, n)}"
