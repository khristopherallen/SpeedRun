/// @description Movement

// UPDATE INPUT
input_left		= keyboard_check(ord("A"));
input_right		= keyboard_check(ord("D"));
input_up		= keyboard_check(ord("W"));
input_down		= keyboard_check(ord("S"));
input_jump		= keyboard_check(vk_space);

//	INTENDED MOVEMENT
moveX = (input_right - input_left) * speed_;
moveY = (input_down - input_up) * speed_;

// BLOCK EDGE CHECKS
if (!place_meeting(x, y, o_platform)) {
	if (height_ = 0) {
		active_ = false;
		o_game.speed_ = 0;
	}
}

// KILL PLAYER
if (!active_) {
	o_platform.speed_ = 0;
}

// SWITCH TO JUMP STATE
if (active_ && input_jump && !is_jumping) {
	is_jumping = true;
	vspeed_ = jump_speed_;
}

//PERFORM JUMP
if (is_jumping){
	vspeed_-=gravity_;
	height_ += vspeed_;
	if (height_ <=0){
		vspeed_ = 0;
		height_ = 0;
		is_jumping = false;
	}	
}


// APPLY MOVEMENT
if (active_){
	x += moveX;
}
//y += -speed_; //moveY;

// APPLY SCALE
image_xscale = (height_/(jump_speed_*jump_size_multiplier_))+1;
image_yscale = (height_/(jump_speed_*jump_size_multiplier_))+1;



