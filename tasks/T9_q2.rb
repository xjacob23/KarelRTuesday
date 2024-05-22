require_relative "Ecrivians"
require_relative "../karel/robota"



class T9Q2
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
end
 







