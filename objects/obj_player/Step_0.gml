/// @description Insert description here
// You can write your code in this editor

var up, down, left, right, vel_h, vel_v, deslize;

up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

vel_h = (right - left) * vel; // velocidade destino
vel_v = (down - up) * vel; // velocidade destion

deslize = des_n;
if (place_meeting(x, y, obj_ice))
{
	deslize = des_g;
}

velh = lerp(velh, vel_h, deslize);
velv = lerp(velv, vel_v, deslize);

if (place_meeting(x + velh, y, obj_block))
{
	while(!place_meeting(x + sign(velh), y, obj_block))
	{
		x += sign(velh);
	}
	velh = 0;
}

if (place_meeting(x, y + velv, obj_block))
{
	while(!place_meeting(x, y + sign(velv), obj_block))
	{
		y += sign(velv);
	}
	velv = 0;
}

x += velh;
y += velv;