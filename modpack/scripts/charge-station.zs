val redstone = <ore:dustRedstone>;

val goldCable = <30184:4>;
val glassCable = <30184:9>;
val hvCable = <30184:8>;

val battery = <ore:10kEUStore>;
val energyCrystal = <30241:*>;
val lapotronCrystal = <item.itemBatLamaCrystal:*>;
val lapotronOrb = <item.Lapotronic_Energyorb:*>;

val circuit = <ore:craftingCircuitTier02>;
val advancedCircuit = <ore:craftingCircuitTier04>;
val energyFlowCircuit = <ore:craftingCircuitTier07>;
val machineBlock = <ore:craftingRawMachineTier01>;

val chargeStation = <1229:0>;
val chargeStation2 = <1230:1>;
val chargeStation3 = <1230:2>;
val chargeStation4 = <1230:3>;

recipes.addShapeless(chargeStation,
	[battery, machineBlock, redstone]);
recipes.addShaped(chargeStation2, [
	[null, circuit, null],
	[goldCable, chargeStation, goldCable],
	[null, energyCrystal, null]
]);
recipes.addShaped(chargeStation3, [
	[null, advancedCircuit, null],
	[glassCable, chargeStation2, glassCable],
	[null, lapotronCrystal, null]
]);
recipes.addShaped(chargeStation4, [
	[null, energyFlowCircuit, null],
	[hvCable, chargeStation2, hvCable],
	[null, lapotronOrb, null]
]);
