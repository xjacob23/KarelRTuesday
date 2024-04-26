#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "jacob_robot"

# a task for a stair sweeper
def task()

   world = Robota::World
  world.read_world("../worlds/Cube beton")

  karel = JacobRobot.new(11, 2, Robota::NORTH, 10)















end

if __FILE__ == $0
  if $graphical
     screen = window(14, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end