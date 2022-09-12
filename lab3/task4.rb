=begin
  sum n = 2 to infinity ((n-1)!/(n+1)!)^(n(n+1))
  sum n = 1 to infinity ((4n-1)!*(n+1)!)/((3n)!*3^2n*(2n)!)
=end


$eps = 0.00001

def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end

def series_sum(member_formula, n)
  sum = member_formula.call(n)
  previous_sum = 0
  while (sum - previous_sum).abs > $eps
    n += 1
    previous_sum = sum
    sum += member_formula.call(n)
  end

  sum
end

#i use simplified formula : (n-1)!/(n+1)! = 1/n(n+1)
first_series = lambda { |n|
  (1.0 / (n * (n + 1))) ** (n * (n + 1))
}

def func_for_second_series(n)
  (1.0/((2*n - 1)*(2*n + 1)))
end

def second_series()
  n = 1
  result = func_for_second_series(n)
  begin
    n += 1
    previous = result
    result += func_for_second_series(n)
  end while (result - previous).abs >= $eps
  result
end

third_series = lambda { |n|
  (factorial(4 * n - 1) * factorial(n + 1)).to_f / (factorial(3 * n) * 3**(2 * n) * factorial(2 * n))
}

puts "First series : #{series_sum(first_series, 2)}"
puts "Second series :  #{second_series()}"
puts "Third series : #{series_sum(third_series, 1)}"
