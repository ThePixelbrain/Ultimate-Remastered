recipes.remove(<item.frameProven>);

// quarry
recipes.removeShaped(<tile.machineBlock:0>); // won't remove IC2 recipes

recipes.removeShaped(<item.itemIngotAlloy>); // won't remove IC2 recipes
recipes.addShapeless(<item.ingotForce> * 3,
	[<item.gemForce>, <item.world.items.greenXychoridite>, <item.world.items.greenXychoridite>]);
