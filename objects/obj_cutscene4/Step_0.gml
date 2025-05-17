if mouse_check_button_pressed(mb_left){
	mouse_count += 1;
	if mouse_count == 1 {
		layer_sequence_create("Assets_1", 12, 12, seq_cutscene4_1);
	}
	
	if mouse_count == 2 {
		layer_sequence_create("Assets_1", 12+366+12, 12, seq_cutscene4_2);
	}
	
	if mouse_count == 3 {
		layer_sequence_create("Assets_1", 12, 12+192+24, seq_cutscene4_3);
	}
	
	if mouse_count == 4 {
		layer_sequence_create("Assets_1", 12+366+12, 12+192+24, seq_cutscene4_4);
	}
	
	if mouse_count == 5 {
		room_goto_next();
	}
}