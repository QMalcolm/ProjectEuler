min = 2
max = 100

dict = {}
(min..max).each do |a|
  (min..max).each do |b|
    ab = (a ** b)
    ab_sym = ab.to_s.to_sym
    if dict[ab_sym] == nil
      dict[ab_sym] = ab
    end
  end
end

puts  dict.length
