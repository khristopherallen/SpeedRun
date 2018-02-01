/// @description Create platform

p = instance_create_depth(0,0,0,o_platform);
pWidth = p.sprite_width;
pScale = floor(random_range(1,4));
p.image_yscale = pScale;
pHeight = p.sprite_height;
instance_destroy(p);

newX = random_range(o_game.x_previous-o_game.max_spacing, o_game.x_previous+o_game.max_spacing);
newX = clamp(newX, 0, room_width-pWidth); 
o_game.x_previous = newX;

newP = instance_create_layer(newX, -pHeight, "Platforms", o_platform);
newP.image_yscale = pScale;
newP.image_index = pScale-1;

alarm[3] = 20 + 30*pScale;
