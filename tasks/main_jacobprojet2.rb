#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "next_wall"

# a task for a stair sweeper
def task()

  world = Robota::World
  world.read_world("../worlds/projet world")

  karel = NextWall.new(6, 1, Robota::NORTH, 0,:yellow)
  karelP = NextWall.new(6, 1, Robota::NORTH, 0, :red)
  karelR = NextWall.new(6, 1, Robota::NORTH, 0, :blue)
  karelO = NextWall.new(6, 1, Robota::NORTH, 0, :green)
  karelJ = NextWall.new(6, 1, Robota::NORTH, 0, :purple)
  karelE = NextWall.new(6, 1, Robota::NORTH, 0, :pink)
  karelT = NextWall.new(6, 1, Robota::NORTH, 0, :silver)
  karel.task1
  karel.task2
  karelP.motion
  karelP.writep
  karelP.move
  karelR.motion2
  karelR.writer
  karelO.motion
  karelO.writeo
  karelJ.motion3
  karelJ.writej
  karelE.motion
  karelE.writee
  karelT.motion4
  karelT.writet


  

  

  






    
  end

if __FILE__ == $0
  if $graphical
     screen = window(25, 85) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end