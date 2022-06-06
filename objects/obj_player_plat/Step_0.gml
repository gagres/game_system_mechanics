/// @description Insert description here
// You can write your code in this editor

event_inherited();

var jump, jump_r, right, left, vel_h, chao;

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);
jump_r = keyboard_check_released(vk_space);
chao = place_meeting(x, y + 1, obj_block_plat);

vel_h = (right - left) * vel;

velh = lerp(velh, vel_h, .1);

if (!chao)
{
	velv += grav;
	// controlando altura do pulo
	if (jump_r && velv < 0)
	{
		velv = velv * .5;
	}
}

if (chao && jump)
{
	velv -= pulo;
}

