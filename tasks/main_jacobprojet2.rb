#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "next_wall"

# a task for a stair sweeper
def task()

  world = Robota::World
  world.read_world("../worlds/projet world")

  karel = NextWall.new(3, 1, Robota::NORTH, 200)
  if karel.next_to_a_beeper?
     karel.pick_beeper
  end
 until karel.next_to_a_beeper?
  karel.hop
  karel.four
  karel.turn_right
  karel.four
  if karel.next_to_a_beeper?
    karel.pick_beeper
  end
end









  
  
end
 


if __FILE__ == $0
  if $graphical
     screen = window(25, 75) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end