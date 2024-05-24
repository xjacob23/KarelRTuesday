#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "next_wall"

# a task for a stair sweeper
def task()

  world = Robota::World
  world.read_world("../worlds/toit.kwld")

 karel = NextWall.new(6, 2, Robota::NORTH, 200)


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