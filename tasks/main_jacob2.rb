#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "jacob_robot"

# a task for a stair sweeper
def task()

   world = Robota::World
  world.read_world("../worlds/clock world 2")

  karel = JacobRobot.new(13, 10, Robota::NORTH, 40)
  karel.put_beeper
  karel.turn_right 
  karel.turn_rightnmove
  karel.move
  karel.put_beeper
  karel.turn_leftnmove
  karel.move
  karel.put_beeper
  karel.turn_rightnmove
  karel.move
  karel.put_beeper
  karel.turn_rightnmove
  karel.move
  karel.put_beeper
  karel.turn_leftnmove
  karel.move
  karel.put_beeper
  karel.turn_rightnmove
  karel.move
  karel.put_beeper
  karel.turn_rightnmove
  karel.move
  karel.put_beeper
  karel.turn_leftnmove
  karel.move
  karel.put_beeper
  karel.turn_rightnmove
  karel.move
  karel.put_beeper
  karel.turn_rightnmove
  karel.move
  karel.put_beeper
  karel.turn_leftnmove
  karel.move
  karel.put_beeper
  karel.turn_leftnmove
  karel.move
  karel.turn_off












end

if __FILE__ == $0
  if $graphical
     screen = window(20, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end