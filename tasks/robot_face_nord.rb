require_relative "../karel/ur_robot"
require_relative "../mixins/jacob"
# MON premier robot 

class RobotFaceNord < UrRobot

include Jacob 

  def initialize(street, avenue, beepers, colour)
      super(street, avenue, Robota::NORTH, beepers, colour)
  end
  
end