require_relative "../karel/ur_robot"
require_relative "../mixins/mixer"
# MON premier robot 
class EcritO < UrRobot

include Mixer

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
   	   move
   	   turn_right
   end 
   

   def turn_leftnmove
       move
   	   turn_left
   end 


 
  

end