/// @description 
if (!collected_){
	y+=o_game.speed_;
	if (y>room_height){
		instance_destroy();	
	}
}else{
	y += (o_collector.y-y)*.05;
	x += (o_collector.x-x)*.05;
	if (abs(o_collector.y-y)<2){
		y=o_collector.y;	
	}
}


