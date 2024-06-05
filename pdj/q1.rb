
def convert_seconds(seconds)
  hours = seconds / 3600
  minutes = (seconds % 3600) / 60
  remaining_seconds = seconds % 60

  return hours, minutes, remaining_seconds
end

def format_time(hours, minutes, seconds)
  "#{hours} hours, #{minutes} minutes, and #{seconds} seconds"
end

puts "Donnez une valeur en secondes. 0 pour quitter."
num = gets.chomp.to_i 

while num != 0
  hours, minutes, remaining_seconds = convert_seconds(num)
  puts format_time(hours, minutes, remaining_seconds)

  puts "Donnez une valeur en secondes. 0 pour quitter."
  num = gets.chomp.to_i
end
