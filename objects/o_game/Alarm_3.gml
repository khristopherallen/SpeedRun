/// @description Create platform

p = instance_create_depth(0,0,0,o_platform);
pWidth = p.sprite_width;
pScale = floor(random_range(2,5))/2;
p.image_yscale = pScale;
pHeight = p.sprite_height;
instance_destroy(p);

newX = random_range(o_game.x_previous-o_game.max_spacing, o_game.x_previous+o_game.max_spacing);
newX = clamp(newX, room_width/4, room_width*0.75-pWidth); 

newP = instance_create_layer(newX, -pHeight, "Platforms", o_platform);

o_game.x_previous = newP.x;
newP.image_yscale = pScale;


alarm[3] = 20 + 30*pScale;
