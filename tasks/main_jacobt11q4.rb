#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "move_wall"

# a task for a stair sweeper
def task()

  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")

 karel = MoveWall.new(11, 2, Robota::NORTH, 200)
 karel.turn_around
 karel.place_row
 karel.turn_left
 karel.move
 karel.turn_left
 karel.place_row
 karel.turn_right
 karel.move
 karel.turn_right
 karel.place_row
 karel.turn_left
 karel.move
 karel.turn_left
 karel.place_row
 karel.turn_right
 karel.move
 karel.turn_right
 karel.place_row
 karel.turn_left
 karel.move
 karel.turn_left
 karel.place_row
 karel.turn_right
 karel.move
 karel.turn_right
 karel.place_row
 karel.turn_left
 karel.move
 karel.turn_left
 karel.place_row
 karel.turn_right
 karel.move
 karel.turn_right
 karel.place_row
 karel.turn_off

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