// modular powersuits recipes are broken due to outdated oredict names
// let's just redo all of them, there's not a lot

val iron = <ore:ingotIron>;
val goldNugget = <ore:nuggetGold>;
val ingotGold = <ore:ingotGold>;
val redstone = <ore:dustRedstone>;
val wool = <tile.cloth>;
val silk = <item.string>;
val paper = <item.paper>;
val glass = <tile.glass>;
val glassPlane = <102>; // tile.thinGlass conflicts with chisel
val glowstone = <tile.lightgem>;
val emerald = <item.emerald>;
val diamond = <item.diamond>;
val enderPearl = <item.enderPearl>;

val computerMonitor = <ore:craftingMonitorTier02>;
val refinedIron = <ore:ingotRefinedIron>;
val advancedMachine = <ore:craftingRawMachineTier02>;
val basicCircuit = <ore:craftingCircuitTier02>;
val advancedCircuit = <ore:craftingCircuitTier04>;
val dataStorageCircuit = <ore:craftingCircuitTier05>;
val energyFlowCircuit = <ore:craftingCircuitTier07>;
val machineParts = <ore:craftingMachineParts>;
val nitrogen = <ore:molecule_1n>;
val neutronReflector = <item.Iridium_Neutronreflector>;
val advancedHeatVent = <item.reactorVentDiamond>;
val carbonPlate = <item.itemPartCarbonPlate>;
val uninsulatedCopper = <30184:1>;
val luminator = <tile.blockLuminatorD>;
val reinforcedGlass = <tile.blockAlloyGlass>;
val superconductor = <ore:craftingSuperconductor>;

val battery = <ore:10kEUStore>;

val lapotronCrystal = <item.itemBatLamaCrystal:*>;
val lapotronOrb = <item.Lapotronic_Energyorb:*>;

battery.add(<30239>);
battery.add(<30242>);

val silver = <ore:ingotSilver>;
val electrum = <ore:ingotElectrum>;
val aluminium = <ore:ingotAluminium>;

val steel = <ore:ingotSteel>;
val brass = <ore:ingotBrass>;
val titanium = <ore:ingotTitanium>;
val tungstensteel = <ore:ingotTungstenSteel>;

val iridiumPlate = <ore:plateIridiumAlloy>;
val magnaliumPlate = <ore:plateMagnalium>;

val wiring = <25031:0>;
val solenoid = <25031:1>;
val servoMotor = <25031:2>;
val gliderWing = <25031:3>;
val ionThruster = <25031:4>;
val lvCapacitor = <25031:5>;
val mvCapacitor = <25031:6>;
val hvCapacitor = <25031:7>;
val parachute = <25031:8>;
val basicPlating = <25031:9>;
val advancedPlating = <25031:10>;
val fieldEmitter = <25031:11>;
val laserHologram = <25031:12>;
val carbonMyofiber = <25031:13>;
val controlCircuit = <25031:14>;
val myofiberGel = <25031:15>;
val artificialMuscle = <25031:16>;
val solarPanel = <25031:17>;

recipes.addShaped(controlCircuit, [
	[wiring, advancedCircuit, electrum],
	[dataStorageCircuit, energyFlowCircuit, advancedCircuit],
	[electrum, dataStorageCircuit, wiring]
]);

recipes.addShaped(laserHologram, [
	[luminator, luminator, luminator],
	[<ore:gemRuby>, <ore:gemGreenSapphire>, <ore:gemSapphire>],
	[luminator, luminator, luminator]
]);

recipes.addShaped(basicPlating, [
	[steel, steel],
	[basicCircuit, steel],
	[steel, steel]
]);

recipes.addShaped(advancedPlating, [
	[titanium, titanium],
	[advancedCircuit, titanium],
	[titanium, titanium]
]);

recipes.addShaped(<tile.tinkerTable>, [
	[advancedCircuit, computerMonitor, advancedCircuit],
	[refinedIron, emerald, refinedIron],
	[refinedIron, advancedMachine, refinedIron]
]);

recipes.addShaped(<item.powerArmorHead>, [
	[aluminium, dataStorageCircuit, aluminium],
	[machineParts, computerMonitor, machineParts]
]);

recipes.addShaped(<item.powerArmorTorso>, [
	[aluminium, machineParts, aluminium],
	[aluminium, dataStorageCircuit, aluminium],
	[aluminium, aluminium, aluminium]
]);

recipes.addShaped(<item.powerArmorLegs>, [
	[machineParts, dataStorageCircuit, machineParts],
	[aluminium, null, aluminium],
	[aluminium, null, aluminium]
]);

recipes.addShaped(<item.powerArmorFeet>, [
	[machineParts, null, machineParts],
	[aluminium, dataStorageCircuit, aluminium]
]);

recipes.addShaped(<item.powerTool>, [
	[aluminium, null, aluminium],
	[aluminium, machineParts, aluminium],
	[null, dataStorageCircuit, null]
]);

recipes.addShaped(wiring * 2, [
	[uninsulatedCopper, uninsulatedCopper, uninsulatedCopper],
	[silver, silver, silver],
	[uninsulatedCopper, uninsulatedCopper, uninsulatedCopper]
]);

recipes.addShaped(parachute, [
	[wool, wool, wool],
	[silk, null, silk],
	[carbonPlate, nitrogen, carbonPlate]
]);

recipes.addShaped(lvCapacitor, [
	[refinedIron, wiring, refinedIron],
	[refinedIron, battery, refinedIron],
	[refinedIron, battery, refinedIron]
]);

recipes.addShaped(mvCapacitor, [
	[refinedIron, wiring, refinedIron],
	[refinedIron, lapotronCrystal, refinedIron],
	[refinedIron, lapotronCrystal, refinedIron]
]);

recipes.addShaped(hvCapacitor, [
	[refinedIron, wiring, refinedIron],
	[refinedIron, lapotronOrb, refinedIron],
	[refinedIron, lapotronOrb, refinedIron]
]);

recipes.addShaped(solenoid, [
	[wiring, steel, wiring],
	[wiring, steel, wiring],
	[wiring, steel, wiring]
]);

recipes.addShaped(gliderWing, [
	[null, magnaliumPlate, advancedCircuit],
	[magnaliumPlate, carbonPlate, solenoid],
	[magnaliumPlate, null, null]
]);

recipes.addShaped(servoMotor, [
	[steel, brass, steel],
	[advancedCircuit, solenoid, advancedCircuit],
	[steel, brass, steel]
]);

recipes.addShaped(fieldEmitter, [
	[tungstensteel, solenoid, tungstensteel],
	[superconductor, energyFlowCircuit, superconductor],
	[tungstensteel, solenoid, tungstensteel]
]);

recipes.addShaped(ionThruster, [
	[iridiumPlate, superconductor, iridiumPlate],
	[fieldEmitter, hvCapacitor, fieldEmitter],
	[neutronReflector, null, neutronReflector]
]);

recipes.addShaped(solarPanel, [
	[reinforcedGlass, reinforcedGlass, reinforcedGlass],
	[iridiumPlate, energyFlowCircuit, iridiumPlate]
]);

recipes.addShapeless(<item.rc.part.ingot.steel> * 5, [basicPlating]);
recipes.addShapeless(<item.GT_Materials:19> * 5, [advancedPlating]);
