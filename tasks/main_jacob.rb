#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "jacob_robot3"

# a task for a stair sweeper
def task()



  karel = JacobRobot.new(1, 6, Robota::NORTH, 26)
  karel.put_beeper
  karel.turn_left
  karel.hop
  karel.turn_right 
  karel.move
  karel.turn_right
  karel.drop
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move
  karel.place
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move
  karel.three
  karel.recenter
  karel.three
  karel.turner
  karel.three
  karel.recenter
  karel.three
  karel.turner
  karel.move
  karel.put_beeper
  karel.turn_off













end

if __FILE__ == $0
  if $graphical
     screen = window(11, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end