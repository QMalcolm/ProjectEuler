i = 1
j = 1
index = 2
while j.to_s.length < 1000 do
  index += 1
  tmp = i + j
  i = j
  j = tmp
end

puts index
