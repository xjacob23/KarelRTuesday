#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "jacob_robot"

# a task for a stair sweeper
def task()



  red  = JacobRobot.new(1, 1,  Robota::NORTH, 1, :red)
  blue = JacobRobot.new(1, 1,  Robota::NORTH, 0, :blue)
  green = JacobRobot.new(6, 1,  Robota::EAST, 0, :green)
  yellow = JacobRobot.new(6, 6,  Robota::SOUTH, 0, :yellow)
  pink = JacobRobot.new(1, 6,  Robota::WEST, 0, :pink)
  red.put_beeper
  red.go
  green.go
  yellow.go
  pink.go
  blue.go

 



end

if __FILE__ == $0
  if $graphical
     screen = window(14, 75) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end