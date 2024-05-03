#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "jacob_robot4"

# a task for a stair sweeper
def task()

 world = Robota::World
  world.read_world("../worlds/grinch.kwld")

  karel = JacobRobot.new(1, 6, Robota::NORTH, 24)
  karel.turn_right
  karel.go
  karel.turn_left
  karel.go
  karel.turn_left
  karel.move
  karel.steal
  karel.turn_around
  karel.get_out
  karel.turn_left
  karel.hop
  karel.steal
  karel.turn_around
  karel.get_out
  karel.turn_left
  karel.hop
  karel.steal
  karel.turn_around
  karel.get_out
  karel.hop
  karel.turn_right
  karel.move
  karel.turn_left
  karel.hop
  karel.turn_left
  karel.move
  karel.steal
  karel.turn_around
  karel.get_out
  karel.turn_right
  karel.hop
  karel.turn_around
  karel.steal
  karel.turn_around
  karel.get_out
  karel.turn_right
  karel.hop
  karel.turn_around
  karel.steal
  karel.turn_around
  karel.get_out
  karel.turn_right
  karel.move
  karel.turn_right
  karel.hop
  karel.hop
  karel.hop
  karel.turn_left
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.deposit
  karel.turn_around
  karel.move
  karel.turn_off













end

if __FILE__ == $0
  if $graphical
     screen = window(15, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end