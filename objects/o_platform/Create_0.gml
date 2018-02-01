/// @description 
num_channels = 3;
num_rows = 6;
block_width = sprite_width/num_channels;
block_height = sprite_height/6;
alarm[0] = 1;

// Block types
type = irandom_range(0, 7);

// Snap to grid
move_snap(40, 1);