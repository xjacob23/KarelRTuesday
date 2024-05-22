#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "move_wall"

# a task for a stair sweeper
def task()

  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")

 karel = MoveWall.new(2, 2, Robota::NORTH, 26)
 karel.hop
 karel.pick_beeper
 karel.go
 karel.move
 karel.pick_beeper
 karel.turn_around
 karel.two
 karel.turn_left
 karel.move
 karel.pick_beeper
 karel.turn_rightnmove
 karel.two
 karel.pick_beeper
 karel.hop
 karel.pick_beeper
 karel.move
 karel.turn_leftnmove
 karel.two
 karel.pick_beeper
 karel.move
 karel.pick_beeper
 karel.turn_left
 karel.move
 karel.pick_beeper
 karel.move
 karel.pick_beeper
 karel.move
 karel.pick_beeper
 karel.move
 karel.pick_beeper
 karel.move
 karel.pick_beeper
 karel.turn_left
 karel.two
 karel.pick_beeper
 karel.turn_rightnmove
 karel.two
 karel.pick_beeper
 karel.turn_right
 karel.go
 karel.pick_beeper
 karel.turn_right 
 karel.two
 karel.pick_beeper
 karel.turn_rightnmove
 karel.turn_rightnmove
 karel.pick_beeper
 karel.turn_left
 karel.two
 karel.pick_beeper
 karel.turn_leftnmove
 karel.pick_beeper
 karel.turn_rightnmove
 karel.turn_leftnmove
 karel.hop
 karel.pick_beeper
 karel.move
 karel.turn_left
 karel.hop
 karel.pick_beeper
 karel.turn_around
 karel.move
 karel.turn_rightnmove
 karel.move
 karel.pick_beeper
 karel.move
 karel.turn_right
 karel.two
 karel.pick_beeper



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