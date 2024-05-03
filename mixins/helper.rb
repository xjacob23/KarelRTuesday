#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
module Helper

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

  def steal
      turn_left
      move
      move
      turn_right
      move
      turn_left
      move
      move
      pick_beeper
      pick_beeper
      turn_right
      move
      pick_beeper
      pick_beeper
  end

  def get_out
      move
      turn_left
      move
      move
      turn_right
      move
      turn_left
      move
      move
  end

  def deposit
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

  
  def drop
      put_beeper
      move
      put_beeper
      move
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

  def place
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

  def three
      put_beeper
      move
      put_beeper
      move  
      put_beeper
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
  



end