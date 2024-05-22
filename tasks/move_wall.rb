require_relative "../karel/ur_robot"
require_relative "../mixins/mixer"
require_relative "../mixins/sensor_pack"
# MON premier robot 
class MoveWall < UrRobot

include Mixer
include SensorPack

     def move
       if front_is_clear?
        super  
       end
      end
    
    def pick_beeper
      if next_to_a_beeper?
       super
      end
    end   


   def place1_or_2
       if next_to_a_beeper?
        put_beeper
      else 
        put_beeper
        put_beeper
       end
      end

   def place_row
       place1_or_2
       move
       place1_or_2
       move 
       place1_or_2
       move
       place1_or_2
       move
       place1_or_2
       move 
       place1_or_2
       move
       place1_or_2
       move
       place1_or_2
       move
       place1_or_2
       move
       place1_or_2
   end

   def turn_right
   	   turn_left
       turn_left
       turn_left
   end

   def reculer
   	   turn_left
   	   turn_left 
   	   move
       turn_left
   	   turn_left 
   end

   def quickspin
   	   turn_left
   	   turn_left
   end

   def right_spin
       turn_right
       turn_right
       turn_right
   end



   def turn_rightnmove
   	   turn_right
       move
   end 
   

   def turn_leftnmove
       turn_left
       move
   end 


 
   def big_step
   	   move
   	   move
   	   move 
   	   move
   	   move
   end

   def blue_go
       move
       move
       move
       move
       move
       put_beeper
   end

end
