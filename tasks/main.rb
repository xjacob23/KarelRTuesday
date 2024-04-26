#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "stair_sweeper"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/clock world")
  
  karel = StairSweeper.new(2, 3, Robota::EAST, 0)
  karel.sweep_stairs()
  world.show_world_with_robots(1, 1, 6, 6)
  karel.display()
  
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 75) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end