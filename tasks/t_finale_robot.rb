require_relative "../karel/ur_robot"
require_relative "../mixins/mixer"
require_relative "../mixins/sensor_pack"
# MON premier robot 
class TFinaleRobot < UrRobot

  include Mixer
  include SensorPack

    def put_beeper(count = 1)
      count.times do
      Robota::Karel.world.place_beeper(Robota::Karel.x,Robota::Karel.y)
    end
  end

    def task1
        pick_beeper 
        turn_right
        big_go 
        move
        pick3
        turn_leftnmove
        turn_leftnmove
        four
        pick2
        go
        pick_beeper
        turn_rightnmove
        move
        pick_beeper
        turn_right 
        hop
        turn_leftnmove
        pick_beeper
        turn_leftnmove
        move
        turn_rightnmove
        pick4
        turn_right
        four
        four
        pick3
        turn_leftnmove
        move
        turn_leftnmove
        move
        pick3
        move
        pick3
        go
        turn_rightnmove
        pick5
        two
        turn_rightnmove
        hop
        pick2
    end

    def task2 
      turn_right
      go
      go
      move
      turn_leftnmove
      pick_beeper
      turn_leftnmove
      four
      pick_beeper
      four
      pick_beeper
      move
      turn_rightnmove
      pick_beeper
      turn_rightnmove
      turn_leftnmove
      turn_rightnmove
      pick4
      four
      pick_beeper
      hop
      pick_beeper
      turn_leftnmove
      turn_leftnmove
      four
      pick_beeper
      go
      pick_beeper
      turn_rightnmove
      two
      turn_rightnmove
      four
      pick_beeper
      hop
      pick_beeper
      turn_leftnmove
      turn_leftnmove
      go
      pick_beeper
      move
      turn_rightnmove
      pick_beeper
      move
      turn_rightnmove
      hop
      pick_beeper
      go
      pick_beeper
    end



    def pick2
      pick_beeper
      pick_beeper
    end

    def lpick2
      turn_leftnmove
      pick2
    end

    def rpick2
      turn_rightnmove
      pick2
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

   def trace_obj
      until next_to_a_beeper?
        move
        put_beeper
      end
    end

   def rotate
      if front_is_clear?
        turn_right
        move
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