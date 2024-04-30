#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "deux_bloc_robot"

# a task for a stair sweeper
def task()



  karel = DeuxBlocRobot.new(1, 1, Robota::NORTH, 40)
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.turn_off

 













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