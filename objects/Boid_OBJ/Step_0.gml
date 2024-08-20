/// @description Insert description here
// You can write your code in this editor

move_wrap(true, true, 0)
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



