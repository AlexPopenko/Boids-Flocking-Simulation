/// @description Insert description here
// You can write your code in this editor
LowerSpeedThresh = 9;
UpperSpeedThresh = 12;
image_angle = random_range(0, 360)
Boid_Speed = random_range(LowerSpeedThresh, UpperSpeedThresh);
motion_set(image_angle,Boid_Speed);
