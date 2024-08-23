/// @description Insert description here
// You can write your code in this editor

//In practice, the turn angle they move at a time to turn?
var CoherenceDirection = 1.5;
var CoherenceSpeed = .2;
var Closeness = 100;
var SpeedChange = .1;



move_wrap(true, true, 0)


//Alignment of Boids
//Detects boid nearest to self, adjusts self's direction.

var NearestBoid = instance_nth_nearest(x,y,Boid_OBJ,2);

if distance_to_object(Wall_OBJ) < 200
{
var WX = instance_nearest(x, y, Wall_OBJ).x;
var WY = instance_nearest(x, y, Wall_OBJ).y;
var DirectionToWall = point_direction(id.x, id.y, WX, WY);


	if id.direction-DirectionToWall < 130 && id.direction-DirectionToWall > 0
	{id.direction = id.direction + 6}
	else if DirectionToWall-id.direction < 130 && DirectionToWall-id.direction > 0
	{id.direction = id.direction - 6}
	else if id.direction-DirectionToWall > 230
	{id.direction = id.direction - 6}
	image_angle = direction;
}
else {
	//Tries to maintain distance by switching to slowing down when too close. And speed up when far
if distance_to_object(NearestBoid) > Closeness
{CoherenceDirection = abs(CoherenceDirection);
	CoherenceSpeed = abs(CoherenceSpeed);}
	else if distance_to_object(NearestBoid) < (Closeness-40){
	CoherenceDirection = -1*abs(CoherenceDirection);
	CoherenceSpeed = -1*abs(CoherenceSpeed);
	}
	
if (id.direction > (NearestBoid.direction+5))
{
direction = direction - CoherenceDirection;
image_angle = direction;
}

if (id.direction < (NearestBoid.direction-5)) 
{
direction = direction + CoherenceDirection;
image_angle = direction;
}

if (id.speed > (NearestBoid.speed+.4))
{
speed = speed - CoherenceSpeed;

}
if (id.speed < (NearestBoid.speed-.4)) 
{
speed = speed + CoherenceSpeed;

}

if id.speed < LowerSpeedThresh
{id.speed = id.speed + SpeedChange}
else if id.speed > UpperSpeedThresh
{id.speed = id.speed - SpeedChange}
}

/*
print("Boid:")
print(real(id))
print(id.direction)
print("EndBoid")

if real(instance_nth_nearest(x,y,Boid_OBJ,2)) != real(id)
{
	print("BoidNearest:")
print(real(instance_nth_nearest(x,y,Boid_OBJ,2)))
print(instance_nth_nearest(x,y,Boid_OBJ,2).direction)
print("EndBoidNearest")
}

*/



