A = true
B = true
C = true

X = -40
Y = 6
Z = -12

def first
  printf("\na) !(A  B)  (A  !B): #{!(A || B) && (A && !B)}\n")
  printf("b) (Z != Y) ≤ (6 ≥ Y)  A  B  C  X ≥ 1.5: #{(Z != Y).object_id <= (6 >= Y).object_id && A || B && C && X >= 1.5}\n")
  printf("c) (8 – X * 2 ≤ Z)  (X^2 >= Y^2))  (Z ≥ 15): #{(8 - X * 2 <= Z) && (X ** 2 >= Y ** 2) || (Z >= 15)}\n")
  printf("d) X > 0  Y < 0  Z ≥ (X*Y + (–Y/X))+(–Z)*(–2): #{X > 0 && Y < 0 || Z >= (X * Y + (-Y / X)) + (-Z) * (-2)}\n")
  printf("g) !(A  B  !(C  (!A  B))): #{!(A || B && !(C || (!A || B)))}\n")
  printf("h) X^2 + Y^2 ≥ 1  X ≥ 0  Y ≥ 0: #{X ** 2 + Y ** 2 >= 1 && X >= 0 && Y >= 0}\n")
  printf("i) (A  (C  B <> B  A)  C)  B: #{(A && (C && B != B || A) || C) && B}\n")
end

first()

P = true

def second
  x = -0.5
  printf("\n((Ln(x+1)>x) или не P) и (sqr (x)<x**2+x) или (2*x=x): #{((Math::log(x+1) > x) || !P) && ((Math::sqr(x) < x**2 + x) || (2*x == x))}")
end

second()
