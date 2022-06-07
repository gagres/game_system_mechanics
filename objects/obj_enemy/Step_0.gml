/// @description Insert description here
// You can write your code in this editor

var dist = point_distance(x, y, obj_player.x, obj_player.y);

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
		timer--;
		break;
	case "patrol":
		image_blend = c_aqua;
		
		var chase_player = collision_circle(x, y, area_chase, obj_player, false, true);
		
		// ainda não estou muito longe da posicao inicial
		if (abs(x - xstart) < 100 || abs(y - ystart) < 100)
		{
			x += lengthdir_x(1, dir);
			y += lengthdir_y(1, dir);
		}
		else
		{
			dir = point_direction(x, y, xstart, ystart);
			x += lengthdir_x(1, dir);
			y += lengthdir_y(1, dir);
		}
		
		if (timer <= 0)
		{
			state = choose("idle", "patrol");
			timer = room_speed * (irandom(delay_patrol) + 1)
		}
		if (chase_player)
		{
			state = "chase";
		}
		break;
	case "chase":
		if (dist > area_chase)
		{
			state = "idle";
		}
		else
		{
			dir = point_direction(x, y, obj_player.x, obj_player.y);
			x += lengthdir_x(2, dir);
			y += lengthdir_y(2, dir);
		}
		break;
}

show_debug_message(state);