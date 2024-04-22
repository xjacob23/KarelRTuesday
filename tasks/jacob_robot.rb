require_relative "../karel/ur_robot"

# MON premier robot 
class JacobRobot < UrRobot

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

 
   def big_step
   	   move
   	   move
   	   move 
   	   move
   	   move
   end

   def pick_up_row
       pick_beeper
       move
       pick_beeper
       move
       pick_beeper
       move
       pick_beeper
       move
       pick_beeper
   end


end