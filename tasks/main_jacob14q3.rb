$graphical = true

require_relative "next_wall"

# a task for a stair sweeper
def task()

  world = Robota::World


  karel = NextWall.new(6, 1, Robota::NORTH, 1)
  
  actions = %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper] 
  actions.each do |action|
    karel.send(action) if karel.respond_to?(action)



    end
    
  end

if __FILE__ == $0
  if $graphical
     screen = window(25, 85) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end