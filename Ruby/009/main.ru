def b_max(a, val)
  max_b = (val-a)/2
  if val - (a + max_b) == max_b
    return max_b - 1
  else
    return max_b
  end
end

def a_max(val)
  unless val % 3 == 0
    val -= val % 3
  end
  return (val/3)-1
end

def find_first_pythagorean_triple_when_sum_a_b_c_is(val, min_a = 1)
  max_a = a_max(val)
  for a in min_a..max_a do
    max_b = b_max(a, val)
    for b in (a + 1)..max_b do
      c = val - (a + b)
      return {a: a, b: b, c: (val - (a + b))} if ((a * a) + (b * b)) == (c * c)
    end
  end
  return nil
end

triple = find_first_pythagorean_triple_when_sum_a_b_c_is(1000)
unless triple == nil
  product_triple = triple[:a] * triple[:b] * triple[:c]
  puts "#{triple} => #{product_triple}"
else
  puts "None"
end
