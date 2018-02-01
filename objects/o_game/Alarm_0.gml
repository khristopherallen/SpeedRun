/// @description 

countdown_ -= 1;

if (countdown_ >= 1) {
	alarm[0] = room_speed;
} else {
	countdown_ = countdown_go;
	speed_ = 4;
	o_character.active_ = true;
	alarm[1] = room_speed;
	alarm[3] = 10;
}

