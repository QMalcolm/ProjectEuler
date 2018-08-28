def sum_multiples_of_3_or_5_below(num)
  sum = 0
  (1...num).each do |val|
    if val % 3 == 0 or val % 5 == 0
      sum += val
    end
  end
  return sum
end

puts sum_multiples_of_3_or_5_below(1000)
