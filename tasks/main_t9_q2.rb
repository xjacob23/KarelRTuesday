#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "T9_q2"

# a task for a stair sweeper
def task()

 controller = T9Q2.new
 controller.task 







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