#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
module Jacob

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

  def pick_up_1
      move
      pick_beeper
  end

  def pick_up_2
      pick_beeper
      move
      pick_beeper
      move
  end

  def pick_up_2weird
      pick_beeper
      move
      move
      pick_beeper
  end 

  def pick_up_3
      pick_beeper
      move
      pick_beeper
      move
      pick_beeper
      move
  end

  def pick_up_3weird 
      pick_beeper
      move
      move
      pick_beeper
      move
      move
      pick_beeper
      move
  end

  def pick_up_4weird
      pick_beeper
      move
      move
      pick_beeper
      move
      move
      pick_beeper
      move
      move
      pick_beeper
  end

  def place1
      put_beeper
      move
  end

  def place2weird
      put_beeper
      move
      move
      put_beeper
  end

  def place3weird
      put_beeper
      move
      move
      put_beeper
      move
      move
      put_beeper
      move
  end

  def place4weird
      put_beeper
      move
      move
      put_beeper
      move
      move
      put_beeper
      move
      move
      put_beeper
  end











end