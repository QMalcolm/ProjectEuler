arr = []
File.open("p022_names.txt").each do |line|
  arr = line.gsub('"', '').split(",")
end

arr.sort!

arr_sum = 0
for i in 0...arr.length do
  sum = 0
  arr[i].downcase.split('').each { |x| sum += (x.ord - 96)}
  arr_sum += (sum * (i + 1))
end

puts arr_sum
