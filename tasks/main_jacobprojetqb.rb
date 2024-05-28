#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "next_wall"

# a task for a stair sweeper
def task()

  world = Robota::World
  world.read_world("../worlds/toit2.kwld")

  karel = NextWall.new(3, 1, Robota::NORTH, 200)

  until karel.next_to_a_beeper?
    while karel.right_is_blocked? && karel.front_is_clear? 
      karel.put_beeper
      karel.move
    end
    if !karel.right_is_blocked?
      karel.turn_right
      karel.put_beeper
      karel.move
    else 
      karel.turn_left
    end








   end 
end

if __FILE__ == $0
  if $graphical
     screen = window(14, 60) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end