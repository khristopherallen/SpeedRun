/// @description Randomize Blocks

temp_platform = instance_create_depth(0, 0, 0, o_platform);
platform_height = temp_platform.sprite_height;
platform_width = temp_platform.sprite_width;

instance_destroy(temp_platform);

for (i=0; i<4; i++) {
	platform = instance_create_layer(room_width/2-platform_width/2, pf_spacer+(pf_spacer*2+platform_height)*i, "Platforms", o_platform);
	if (i==1) {
		o_character.x = platform.x+platform.sprite_width/2;
		o_character.newX = o_character.x;
	}
		//while (platform.x == x_previous) {
		//platform.x = random_range(x_previous-max_spacing, x_previous+max_spacing);
		//platform.x = clamp(platform.x, 0, room_width-platform.sprite_width); 
		//with (platform) {
			//move_snap(1, 1);
			//alarm[0] = 1;
		//}	
	//}
	x_previous = platform.x;
} 

//o_character.x = blocks_[1].x+blocks_[1].sprite_width/2; 
//o_character.newX  = o_character.x; 