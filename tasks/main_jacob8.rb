#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Ecrivians"

# a task for a stair sweeper
def task()



  karelH = EcritH.new(7, 2, Robota::NORTH)
  karelE = EcritE.new(7, 7, Robota::NORTH)
  karelL = EcritL.new(7, 11, Robota::NORTH)
  karelO = EcritO.new(7, 19, Robota::NORTH)
  karelH.ecrit_lettre
  karelE.ecrit_lettre
  karelL.ecrit_lettre 
  karelL.move
  karelL.move
  karelL.turn_left
  karelL.four
  karelL.ecrit_lettre
  karelO.ecrit_lettre









end

if __FILE__ == $0
  if $graphical
     screen = window(24, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end