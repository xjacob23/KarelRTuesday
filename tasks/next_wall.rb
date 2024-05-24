require_relative "../karel/ur_robot"
require_relative "../mixins/mixer"
require_relative "../mixins/sensor_pack"
# MON premier robot 
class NextWall < UrRobot

  include Mixer
  include SensorPack

    
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


   def turneer
      if front_is_clear?
        turn_right
        if !front_is_clear?
          put_beeper
        end
      end
    end

   def right_is_blocked? 
       turn_right
       if front_is_clear?
        turn_left
        return false 
      else 
        turn_left
        return true 
       end
     end

   def left_is_blocked?
       turn_left
       if front_is_clear?
        turn_right
        return false 
      else 
        turn_right
        return true
       end 
     end

   def front_is_blocked?
    !front_is_clear?
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


 
  
end