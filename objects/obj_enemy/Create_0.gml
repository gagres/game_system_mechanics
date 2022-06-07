/// @description Insert description here
// You can write your code in this editor

image_blend = c_lime;

xx = x;
yy = y;
dir = -1;
area_chase = 200;
area_attack = 100;
delay_patrol = 2;
timer = room_speed * (irandom(delay_patrol) + 1);

state = "idle"