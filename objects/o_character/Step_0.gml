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

if (active_){
	

	// BLOCK EDGE CHECKS
	if (!place_meeting(x, y, o_platform)) {
		if (height_ = 0) {
			active_ = false;
		}
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
			is_landing = true;
		}
		yspeed_ = 0;
	}

	//GROUND ACTIONS
	if (!is_jumping && !is_landing){
		if (place_meeting(x,y-o_game.speed_,o_block_var1)){
			yspeed_ = -o_game.speed_;
		}else if (yspeed_ < 0){
			yspeed_ = 0;
		}
		if (place_meeting(x+moveX,y,o_block_var1)){
			moveX = 0;	
		}
	}

	if (is_landing){
		if (!place_meeting(x,y,o_block_var1)){
			is_landing = false;
		}	
	}

	// APPLY X
	if (active_){
		x += moveX;

		if (y > room_height){
			active_ = false;	
		}
	}

	if (!active_){
		//player died
		o_game.speed_ = 0;
	}
	
	y-= yspeed_;
	
	//reduce yspeed_
	if (yspeed_ >0){
		yspeed_ -= (yspeed_)*.05;
	}
	
	//y += -speed_; //moveY;

	// APPLY SCALE
	image_xscale = (height_/(jump_speed_*jump_size_multiplier_))+1;
	image_yscale = (height_/(jump_speed_*jump_size_multiplier_))+1;
}
