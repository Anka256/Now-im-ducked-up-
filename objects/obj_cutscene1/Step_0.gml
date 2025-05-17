if mouse_check_button_pressed(mb_left){
	mouse_count += 1;
	if mouse_count == 1 {
		layer_sequence_create("Assets_1", 12, 12, seq_cutscene1_1);
	}
	
	if mouse_count == 2 {
		layer_sequence_create("Assets_1", 12+240+12, 12, seq_cutscene1_2);
	}
	
	if mouse_count == 3 {
		layer_sequence_create("Assets_1", 12+240+12+240+12, 12, seq_cutscene1_3);
	}
	
	if mouse_count == 4 {
		layer_sequence_create("Assets_1", 12, 12+192+24, seq_cutscene1_4);
	}
	
	if mouse_count == 5 {
		layer_sequence_create("Assets_1", 12+240+12+240+12, 12+192+24, seq_cutscene1_5);
	}
	
	if mouse_count == 6 {
		room_goto_next();
	}
}