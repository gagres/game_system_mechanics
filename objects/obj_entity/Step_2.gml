/// @description Insert description here
// You can write your code in this editor

repeat(abs(velh))
{
	if (place_meeting(x + sign(velh), y, obj_block_plat) && !place_meeting(x + sign(velh), y - 1, obj_block_plat))
	{
		y--;
	}
	
	if (
		!place_meeting(x + sign(velh), y, obj_block_plat) &&
		!place_meeting(x + sign(velh), y + 1, obj_block_plat) &&
		place_meeting(x + sign(velh), y + 2, obj_block_plat))
	{
		show_debug_message("to aqui");
		y++
	}
	
	if (!place_meeting(x + sign(velh), y, obj_block_plat))
	{
		x += sign(velh);
	} else
	{
		velh = 0;
		break;
	}
}

repeat(abs(velv))
{
	if (!place_meeting(x, y + sign(velv), obj_block_plat))
	{
		y += sign(velv);
	} else
	{
		velv = 0;
		break;
	}
}