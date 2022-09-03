//movement
var PlayerSpeed = 7

if (keyboard_check(ord("W")))   {
  y -= PlayerSpeed
};


if (keyboard_check(ord("S")))   {
  y += PlayerSpeed 
}


if (keyboard_check(ord("A"))) {
  x -= PlayerSpeed 
}

if (keyboard_check(ord("D"))) {
  x += PlayerSpeed 
}

//inbounds
if(x > room_width || x < 0 || y < 0 || y > room_height){
  x = -1 *PlayerSpeed
  y = -1 *PlayerSpeed
}


//weapons
if(mouse_check_button_pressed(mb_left)){
  var lazer = instance_create_layer(x,y-20,"Instances",o_lazer1);

  with (lazer)
  {
      speed = 2000/room_speed;
      direction = o_vehicle1.direction;

  }
 
}


//civilianspawn
t++

if (t >= 100){
  var randomypos1 = random_range(0, 720);
  instance_create_layer(1400,randomypos1,"Instances", o_civilian1);
  t = 0
}

//copspawn
t++

if (t >= 100){
  var randomypos1 = random_range(0, 720);
  instance_create_layer(0,randomypos1,"Instances", o_cop2);
  t = 0
}
if (t >= 110){
  var randomypos1 = random_range(0, 720);
  instance_create_layer(0,randomypos1,"Instances", o_cop3);
  t = 0
}
if (t >= 120){
  var randomypos1 = random_range(0, 720);
  instance_create_layer(0,randomypos1,"Instances", o_cop4);
  t = 0
}