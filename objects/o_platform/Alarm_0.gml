/// @description Generate objects

for (i=0;i<20;i++){
		for (j=0;j<12;j++){
			choice = floor(random_range(1,101));
			objX = x + block_size*j;
			objY = y + block_size*i;
					
			if (choice<=2){
				obj = instance_create_layer(objX,objY,"Coins",o_coin);
			}else if (choice >=3 && choice <= 5){
				obj = instance_create_layer(objX,objY,"Blocks",o_block_var1);
			}else if (choice == 6){
				obj = instance_create_layer(objX,objY,"Coins",o_energy);
			}else if (choice >=7 && choice <=8 && j == 0){
				for (k=0;k<12;k++){
					objX = x + block_size*k;
					instance_create_layer(objX,objY,"Blocks",o_block_var1);
				}
				j=12;
			}
		}
	} 