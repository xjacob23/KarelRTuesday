require_relative "../karel/ur_robot"
require_relative "../mixins/mixer"
require_relative "../mixins/sensor_pack"
# MON premier robot 
class NextWall < UrRobot

  include Mixer
  include SensorPack




    def task1
        pick_beeper
        four
        turn_right
        four
        pick_beeper
        go
        two
        pick_beeper
        hop
        turn_right
        two
        pick_beeper
        two
        turn_right
        go
        pick_beeper
        turn_left
        four
        turn_left
        four
        pick_beeper
        four
        turn_left
        two
        pick_beeper
        turn_right
        two
        four
        turn_left
        hop
        pick_beeper
        hop
        turn_left
        four
        pick_beeper
    end

    def task2 
      turn_leftnmove
      go
      move
      task3
      task4
    end


    def writep
        put_beeper
        turn_leftnmove
        put_beeper
        move
        put_beeper
        turn_rightnmove
        put_beeper
        move
        put_beeper
        turn_rightnmove
        put_beeper
        move
        put_beeper
        turn_rightnmove
        put_beeper
        turn_around
        two
        put_beeper
        move
        put_beeper
    end

    def writer
      turn_leftnmove
      hop
      put_beeper
      move
      put_beeper
      move
      put_beeper
      turn_rightnmove
      put_beeper
      two
      put_beeper
      move
      turn_leftnmove
      put_beeper
      turn_around
      hop
      put_beeper
      turn_right 
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      turn_around
      move
      turn_leftnmove
      put_beeper
      turn_right
      hop
    end

    def writeo
      turn_left
      go
      four
      place
      place
      turn_rightnmove
      place
      place
      place
      turn_rightnmove
      place
      place
      turn_rightnmove
      place
      place
      place
      turn_around
      go
    end

    def writej
      turn_left
      go
      go
      hop
      place
      place
      place
      turn_around
      two
      turn_left
      move
      place
      place
      place
      put_beeper
      turn_rightnmove
      put_beeper
      move
      put_beeper
      turn_leftnmove
    end

    def writee
      turn_left
      go
      go
      go
      two
      place
      place
      place
      turn_around
      hop
      turn_leftnmove
      place
      put_beeper
      turn_leftnmove
      put_beeper
      turn_around
      move
      turn_leftnmove
      place
      put_beeper
      turn_leftnmove
      place
      place
      turn_around
      hop
      turn_leftnmove
    end

    def writet
      turn_left
      bigo
      move
      place
      place
      put_beeper
      turn_around
      move
      turn_leftnmove
      place
      place
      place
      put_beeper
      move

    end



    def place
      put_beeper
      move
    end


    def motion
      go
      go
      go
      two
      turn_right
      go
      pick10
      turn_around
      four
      turn_left
      go
    end

    def motion2
      go
      go
      go
      two
      turn_right
      go
      pick11
      turn_around
      four
      turn_left
      go
    end

    def motion3
      go
      go
      go
      two
      turn_right
      go
      pick9
      turn_around
      four
      turn_left
      go
    end

      def motion4
      go
      go
      go
      two
      turn_right
      go
      pick7
      turn_around
      four
      turn_left
      go
    end





    def task3
      pick2
      move
      pick2
      lpick2
      lpick2
      pick2
      rpick2
      rpick2
      lpick2
      lpick2
    end

    def task4
      move 
      turn_left 
      bigo
      turn_left
      move
      task3
      bigo
      turn_left
      hop
      solution
      hop
      turn_around
      solution
      four
      two
      turn_around
      solution
      four
      turn_around
      solution
      turn_around 
      bigo
      two
      turn_around
      four
      turn_right
      putdown
      two
    end

    def solution
      rpick2
      rpick2
      turn_rightnmove
      turn_leftnmove
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

    def pick10
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
    end
      
    def pick11
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
    end



    def pick9
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
    end


    def pick7
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
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