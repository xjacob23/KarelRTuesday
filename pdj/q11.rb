def is_prime(n)
  return false if n <= 1
  return true if n == 2 || n == 3
  return false if n % 2 == 0 || n % 3 == 0

  i = 5
  w = 2

  while i * i <= n
    return false if n % i == 0
    i += w
    w = 6 - w
  end

  true
end

# this displays prime numbers between 1 and 100

puts "Prime numbers between 1 and 100:"
(1..100).each do |num|
  puts num if is_prime(num)
end
