def num_divisors(n)
  n = n/2 if n % 2 == 0
  divisors = 1
  count = 0
  while n % 2 == 0 do
    count += 1
    n = n/2
  end

  divisors *= (count + 1)

  r = 3
  while n != 1 do
    count = 0
    while n % r == 0 do
      count += 1
      n = n/r
    end
    divisors *= (count + 1)
    r += 2
  end

  return divisors
end

def find_triangular_index(factor_limit)
  n = 1
  lnum = num_divisors(n)
  rnum = num_divisors(n+1)
  while lnum * rnum < 500 do
    n += 1
    lnum = num_divisors(n)
    rnum = num_divisors(n+1)
  end
  return n
end

index = find_triangular_index(500)
triangle = (index * (index + 1)) / 2
puts triangle
