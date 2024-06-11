puts "Number   Square   Square Root"

puts "------------------------------"

(1..50).each do |num|
  square = num * num
  square_root = Math.sqrt(num)
  puts "#{num}\t#{square}\t#{square_root}"
end
