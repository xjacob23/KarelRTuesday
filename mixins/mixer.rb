#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
module Mixer

  # Turn right by executing three turn left actions
  def turn_right
    turn_left
    turn_left
    turn_left
  end
  
  # Turn around by executing two turn left actions
  def turn_around
    turn_left
    turn_left
  end
  
  # Back up by turning around, moving and again turning around. Robot
  # will be left facing the original direction. Might fail if there is 
  # a wall immediately behind the robot at the start. 
  def back_up
    turn_around
    move
    turn_around
  end

  def hop
      move
      move
      move
  end

  def go
      move
      move
      move
      move
      move
  end

  def four
      move
      move
      move
      move
  end

  def twenty
    four
    four
    four
    four
    four
  end
  
  def two
      move
      move
  end

  def big_go
      go
      go
  end

  def pick5
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
  end


  def pick4
      pick_beeper
      pick_beeper
      pick_beeper
      pick_beeper
  end

    
  def pick3
      pick_beeper
      pick_beeper
      pick_beeper
  end

  def pick2
      pick_beeper
      pick_beeper
  end

  def recenter
      turn_left
      move
      turn_left
  end

  def turner
      turn_right
      move
      turn_right
  end


  def shortcut
     four
     turn_rightnmove
     hop
     turn_left
  end

  def putdown
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
  end



  def move_to
      turn_left
      go
      move
      turn_left
      go
      go
      turn_around
  end


end