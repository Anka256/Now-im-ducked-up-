#region vars

var m_left = keyboard_check_direct(ord("A"));
var m_right = keyboard_check_direct(ord("D"));
var m_up = keyboard_check_direct(ord("W"));
var m_down = keyboard_check_direct(ord("S"));
var space = keyboard_check_pressed(vk_space);	

hsp = (m_right - m_left)*w_speed;

vsp += grv

if (hsp < 0) {sprite_index = spr_duck_left}
else if (hsp > 0) {sprite_index = spr_duck_right}

#endregion

#region ladder

	//merdiven
if (m_up || m_down)
{
	if place_meeting(x, y, obj_ladder) onLadder = true;
}
if (onLadder) 
{
	vsp = 0;
	if (m_up) vsp = -ladder_speed;
	if (m_down) vsp = +ladder_speed;
	if !place_meeting(x, y, obj_ladder) onLadder = false;
	if (space) onLadder = false;
}

#endregion

#region movements

	//yatay hareket obj_wall
if (place_meeting(x + hsp, y, obj_wall))
{
	while(!place_meeting(x + sign(hsp), y, obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

	//dikey hareket obj_wall
if (place_meeting(x, y + vsp, obj_wall))
{
	while(!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
if (place_meeting(x, y + vsp, obj_ladder)) && (!m_down) && (!m_up)
{
	while(!place_meeting(x, y + sign(vsp), obj_ladder))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

	// jump
if (place_meeting(x, y + 1, obj_wall)) && (space) {
	vsp -= jumpspeed
}

#endregion


if place_meeting(x, y, obj_enddoor) {
	room_goto_next();
}