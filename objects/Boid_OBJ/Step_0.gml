/// @description Insert description here
// You can write your code in this editor

//In practice, the turn angle they move at a time to turn?
var CoherenceDirection = 1.5;
var CoherenceSpeed = .2;
var Closeness = 20;
var SpeedChange = .1;

move_wrap(true, true, 0)


//Alignment of Boids
//Detects boid nearest to self, adjusts self's direction.

var NearestBoid = instance_nth_nearest(x,y,Boid_OBJ,2);

if distance_to_object(NearestBoid) > Closeness
{CoherenceDirection = abs(CoherenceDirection);
	CoherenceSpeed = abs(CoherenceSpeed);}
	else{
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



