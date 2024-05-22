require_relative "../karel/ur_robot"
require_relative "../karel/robota"
require_relative "../mixins/mixer"

class EcritH < UrRobot
  include Mixer

  def initialize(street, avenue, direction)
    super(street, avenue, direction, Robota::INFINITY)
  end

  def ecrit_lettre
    turn_around
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_around
    move
    move
    turn_right
    move
    put_beeper
    move
    put_beeper
    move
    turn_left
    put_beeper
    move
    put_beeper
    move
    put_beeper
    turn_around
    hop
    put_beeper
    move
    put_beeper
  end

end

class EcritE < UrRobot 
 def initialize(street, avenue, direction)
    super(street, avenue, direction, Robota::INFINITY)
  end

include Mixer 

 def ecrit_lettre
      turn_right
      move
      move
      turn_around
      put_beeper
      move
      put_beeper
      move
      put_beeper
      turn_left
      move
      put_beeper
      move
      put_beeper
      turn_left
      move
      put_beeper
      move 
      put_beeper
      turn_around
      move
      move
      turn_left
      move
      put_beeper
      move
      put_beeper
      turn_left
      move
      put_beeper
      move
      put_beeper
  end

end

class EcritL < UrRobot 
 def initialize(street, avenue, direction)
    super(street, avenue, direction, Robota::INFINITY)
  end

include Mixer 

  def ecrit_lettre
      turn_around
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      turn_left
      move
      put_beeper
      move
      put_beeper
  end

 end

 
class EcritO < UrRobot 
 def initialize(street, avenue, direction)
    super(street, avenue, direction, Robota::INFINITY)
  end

include Mixer 


 def ecrit_lettre
     turn_around
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     turn_left
     move
     put_beeper
     move
     put_beeper
     turn_left
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     move
     put_beeper
     turn_left
     move
     put_beeper


























     end
    end

