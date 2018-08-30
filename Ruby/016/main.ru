def sum_str_arr(str_arr)
  sum = 0
  str_arr.each { |val| sum += val.to_i }
  return sum
end

num = 2 ** 1000
num_array = num.to_s.split('')
puts sum_str_arr(num_array)
