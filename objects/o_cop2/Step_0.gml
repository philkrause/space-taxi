/// @description Insert description here
// You can write your code in this editor

image_speed = 20/room_speed
speed = 80 / room_speed
move_towards_point(o_vehicle1.x, o_vehicle1.y, speed);

//death
if(instance_place(x,y, o_lazer1)){
    instance_create_layer(x,y,"Instances",o_explosion1)
	instance_destroy()
}


var distance = 1000
if(instance_place(x+distance, x+distance, o_cop2) || instance_place(x-distance, x-distance, o_cop2 )){
    x = -x
} 

if(instance_place(y+distance, y+distance, o_cop2) || instance_place(y-distance, y-distance, o_cop2 )){
    y = -y
} 