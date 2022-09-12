

def rectangle_method(func, a, b, n, step = (b - a) / n.to_f)
  sum = 0.0
  x = a + step / 2
  while x < b
    sum += func.call(x)
    x += step
  end
  sum * step
end

def trapezoid_method(func, a, b, n, step = (b - a) / n.to_f)
  sum = func.call(a) / 2 + func.call(b) / 2
  x = a + step
  while x <= b - step
    sum += func.call(x)
    x += step
  end
  sum * step
end

f1 = lambda { |x|
  x * (1 + x)**(1/3)
}

f2 = lambda { |x|
  1/(x*Math::log(x)**2)
}
n = 2000

a1 = 1.0
b1 = 8.0

a2 = 2.0
b2 = 2.7

puts "Rectangle method for f1 : #{rectangle_method(f1, a1, b1, n)}"
puts "Trapezoid method for f1 : #{trapezoid_method(f1, a1, b1, n)}"
puts "Rectangle method for f2 : #{rectangle_method(f2, a2, b2, n)}"
puts "Trapezoid method for f2 : #{trapezoid_method(f2, a2, b2, n)}"
