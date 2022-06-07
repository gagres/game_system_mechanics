/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case "idle":
		image_blend = c_lime;
		if (timer <= 0)
		{
			state = choose("idle", "patrol");
			timer = room_speed * (irandom(delay_patrol) + 1);
			xx = irandom(room_width);
			yy = irandom(room_height);
			dir = point_direction(x, y, xx, yy);
		}
		break;
	case "patrol":
		image_blend = c_aqua;
		x += lengthdir_x(1, dir);
		y += lengthdir_y(1, dir);
		break;
}

timer--;

show_debug_message(state);