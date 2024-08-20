/// @description Insert description here
// You can write your code in this editor

move_wrap(true, true, 0)


//Alignment of Boids
//Detects boid nearest to self, adjusts both nearest and self's direction slightly to be more in line.
//
var NearestBoid = instance_nth_nearest(x,y,Boid_OBJ,2);
if (id.direction > (NearestBoid.direction+5))
{
direction = direction - .5;
NearestBoid.direction = NearestBoid.direction +.5
image_angle = direction;
NearestBoid.image_angle = NearestBoid.direction
}
if (id.direction < (NearestBoid.direction-5)) 
{
direction = direction + .5;
NearestBoid.direction = NearestBoid.direction - .5
image_angle = direction;
NearestBoid.image_angle = NearestBoid.direction
}

if (id.speed > (NearestBoid.speed+.4))
{
speed = speed - .1;
NearestBoid.speed = NearestBoid.speed +.1

}
if (id.speed < (NearestBoid.speed-.4)) 
{
speed = speed + .1;
NearestBoid.speed = NearestBoid.speed - .1

}
print(distance_to_object(NearestBoid))
// Coherence of Boids
if distance_to_object(NearestBoid) > 10
{
if id.speed > NearestBoid.speed
{
speed = speed - .1;
NearestBoid.speed = NearestBoid.speed +.1;

}
else if id.speed < NearestBoid.speed
{
speed = speed + .1;
NearestBoid.speed = NearestBoid.speed - .1;
}
//Steering towards nearby Boids
if (id.direction > (NearestBoid.direction+5))
{
direction = direction - .5;
image_angle = direction;
}
else if (id.direction < (NearestBoid.direction-5)) 
{
direction = direction + .5;
image_angle = direction;
}


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



