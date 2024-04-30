require_relative "../karel/ur_robot"
require_relative "../mixins/jacob"
# MON premier robot 
class DeuxBlocRobot < UrRobot

include Jacob 

  def move
      super
      super
  end
  
end