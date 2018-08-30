# Assumes sq_dimension is odd, i.e. 1001 -> 1001x1001 grid
def sum_spiraling_diagonals(sq_dimension)
  sum = 1
  incriment = 2
  num = 1
  cycles = 0
  max_cycles = (sq_dimension-1)/2
  while cycles < max_cycles
    (1..4).each do |val|
      num += incriment
      sum += num
    end
    incriment += 2
    cycles += 1
  end
  return sum
end

puts sum_spiraling_diagonals(1001)
