val soulWax = <26347:1>;

recipes.remove(<88:4>);
recipes.addShaped(<88> * 4, [
	[<12>, soulWax, <12>],
	[soulWax, <3>, soulWax],
	[<12>, soulWax, <12>]
]);
recipes.addShaped(<88> * 4, [
	[soulWax, <12>, soulWax],
	[<12>, <3>, <12>],
	[soulWax, <12>, soulWax]
]);
recipes.addShapeless(<88> * 5, [<item.alkahestTome>, <88>, <item.redstone>]); // Readd Alkahest recipe
