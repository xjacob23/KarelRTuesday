#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t_finale_robot"

# a task for a stair sweeper
def task(columns)

  world = Robota::World
  world.read_world("../worlds/tache_finale_a.kwld")

  karel = TFinaleRobot.new(1, 1, Robota::NORTH, 0,)

  karel.task1

  for column_number in 1..columns
    beeper_count = column_number


    karel.move_to(1, column_number)

    beeper_count.times do 
      karel.put_beeper(beeper_count)
    end
  end
end

if __FILE__ == $0
  if $graphical
     screen = window(14, 85) # (size, speed)
     screen.run do
      
      puts "How many columns do you want to create?"
      columns = gets.chomp.to_i

      if columns <= 0
        puts "Please enter a greater number than zero"
      else
        task(columns)
      end
    end
  end

end
   