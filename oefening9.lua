require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.99
stapjes = 9
while stapjes >0 do
robot_arm:grab()
for i=1, stapjes do
  robot_arm:move_right()
end
stapjes = stapjes - 1 
  robot_arm:drop()
for i=1, stapjes do
  robot_arm:move_left()
end
stapjes = stapjes - 1 
end