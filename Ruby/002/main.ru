def get_fib_less_than(num)
  list = [1, 1]
  i = 1
  j = 1
  loop do
    temp = i + j
    break if temp > num
    list.push(temp)
    i = j
    j = temp
  end
  return list
end

def filter_evens(int_arr)
  int_arr.select { |val| val % 2 == 0}
end

def sum_array(int_arr)
  sum = 0
  int_arr.each { |val| sum += val}
  return sum
end

fib = get_fib_less_than(4000000)
evens_fib = filter_evens(fib)
puts sum_array(evens_fib)
