def collatz_iteration(n)
  return n/2 if n % 2 == 0
  return (3*n)+1
end

def calculate_collatz_sequence(num)
  seq = [num]
  while num > 1 do
    num = collatz_iteration(num)
    seq.append(num)
  end
  return seq
end

longest = []
(1...1000000).each do |val|
  seq = calculate_collatz_sequence(val)
  longest = seq if seq.length > longest.length
end

puts "The longest sequence started with #{longest[0]} which had #{longest.length} iterations"
