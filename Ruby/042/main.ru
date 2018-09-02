def word_value(word)
  sum = 0
  word.downcase.split('').each { |val| sum += (val.ord - 96) }
  return sum
end

def is_triangle_number?(number)
  m = (Math.sqrt((8*number)+1) - 1) / 2
  return m % 1 == 0
end

arr = []
File.open("p042_words.txt").each do |line|
  arr = line.gsub('"', '').split(",")
end

total = 0
arr.each do |word|
  val = word_value(word)
  total += 1 if is_triangle_number?(val)
end

puts total
