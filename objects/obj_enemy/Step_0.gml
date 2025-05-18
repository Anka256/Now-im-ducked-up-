#region movement


if collision_line(x - collision_part_wall, y, x + sprite_width + collision_part_wall, y, obj_wall, false, true) {
	hsp *= -1;
	alarm_hsp *= -1;
}


if (hsp < 0) {sprite_index = spr_enemy_left}
else if (hsp > 0) {sprite_index = spr_enemy_right}

#endregion


var look_x = x + sign(hsp) * collision_part_duck; 
if collision_line(x, y+40, look_x, y+40, obj_duck, false, true) {
	x += (hsp + alarm_hsp);  
}
x += hsp