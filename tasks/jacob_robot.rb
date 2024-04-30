require_relative "../karel/ur_robot"
require_relative "../mixins/jacob"
# MON premier robot 
class JacobRobot < UrRobot

include Jacob 

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
   
   def place_line
   	   put_beeper
   	   move
   	   put_beeper
   	   move
   	   put_beeper
   	   move
   	   put_beeper
   	   move
   	   put_beeper
   end
   

   def pick_up_small_row
       pick_beeper
       move
       pick_beeper
       move
       pick_beeper
       move
       pick_beeper
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
   	   move
   	   turn_right
   end 
   

   def turn_leftnmove
       move
   	   turn_left
   end 


 
   def big_step
   	   move
   	   move
   	   move 
   	   move
   	   move
   end


end