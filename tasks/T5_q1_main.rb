#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "jacob_robot"

# a task for a stair sweeper
def task()



  karel = JacobRobot.new(3, 3, Robota::NORTH, 5)
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper




















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