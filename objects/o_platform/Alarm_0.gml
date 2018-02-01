/// @description generate objects

/*var top = random_range();
var low = random_range();
var center = random_range();

switch (type) {
	case 1:
		//bar
		instance_create_layer(x)
		break;
	case 2:
		//block
		break;
	case 3:
		//2 blocks
		break;
	case 4:
		//bar+block
		break;
	default:
		break;
} */

/*for (i=0;i<num_rows;i++){
		for (j=0;j<num_channels;j++){
			choice = floor(random_range(1,101));
			objX = x - sprite_width/2 + block_width*j 
			objY = y + block_height*i;
					
			if (choice<=2){
				obj = instance_create_layer(objX,objY,"Coins",o_coin);
			}else if (choice >=3 && choice <= 5){
				obj = instance_create_layer(objX,objY,"Blocks",o_block_var1);
			}else if (choice == 6){
				obj = instance_create_layer(objX,objY,"Coins",o_energy);
			}else if (choice >=7 && choice <=8 && j == 0){
				for (k=0;k<num_rows;k++){
					objX = x - sprite_width/2 + block_width*k;
					instance_create_layer(objX,objY,"Blocks",o_block_var1);
				}
				j=num_channels;
			}
		}
	} */