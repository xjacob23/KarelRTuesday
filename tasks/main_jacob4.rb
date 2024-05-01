#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "robot_face_nord"

# a task for a stair sweeper
def task()



  karel = RobotFaceNord.new(5, 5, 10, :green)

  karel.turn_left
  karel.bigstep
  karel.turn_left
  karel.bigstep
  karel.turn_left
  karel.turn_left
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