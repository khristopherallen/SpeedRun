/// @description 

if (visible_) {
	draw_text(view_wport[0]/2, view_hport[0]/2, countdown_);
} else {
	draw_text(view_wport[0]/2, 10, "COINS: "+string(coins_));
}