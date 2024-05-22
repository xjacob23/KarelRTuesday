#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "move_wall"

# a task for a stair sweeper
def task()

  world = Robota::World
  world.read_world("../worlds/clock world 2")

 karel = MoveWall.new(1, 6, Robota::NORTH, 26)
 karel.go








end

if __FILE__ == $0
  if $graphical
     screen = window(24, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end