def is_pentagonal_number?(num)
  m = (Math.sqrt((24*num)+1) + 1) / 6
  return m % 1 == 0
end

def is_hexagonal_number?(num)
  m = (Math.sqrt((8*num)+1) + 1) / 4
  return m % 1 == 0
end

def nth_triangle_number(num)
  return (num * (num + 1)) / 2
end

n = 286
loop do
  triangle = nth_triangle_number(n)
  break if is_pentagonal_number?(triangle) && is_hexagonal_number?(triangle)
  n += 1
end

puts nth_triangle_number(n)
