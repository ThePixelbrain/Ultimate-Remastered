# More reasonable Chassis recipes (backport)

val basicPipe = <item.PipeItemsBasicLogistics>;
val chassisMk1 = <item.PipeLogisticsChassiMk1>;
val chassisMk2 = <item.PipeLogisticsChassiMk2>;
val chassisMk3 = <item.PipeLogisticsChassiMk3>;
val chassisMk4 = <item.PipeLogisticsChassiMk4>;
val chassisMk5 = <item.PipeLogisticsChassiMk5>;

val redstone = <ore:dustRedstone>;
val iron = <ore:ingotIron>;
val gold = <ore:ingotGold>;

val ironChipset = <item.redstoneChipset:1>;
val goldChipset = <item.redstoneChipset:2>;
val diamondChipset = <item.redstoneChipset:3>;

recipes.remove(chassisMk1);
recipes.addShaped(chassisMk1, [
    [redstone, redstone, redstone],
    [iron, basicPipe, iron]
]);

recipes.remove(chassisMk2);
recipes.addShaped(chassisMk2, [
    [iron, iron, iron],
    [iron, basicPipe, iron]
]);
recipes.addShaped(chassisMk2, [
    [null, ironChipset, null],
    [iron, basicPipe, iron]
]);

recipes.remove(chassisMk3);
recipes.addShaped(chassisMk3, [
    [iron, iron, iron],
    [iron, basicPipe, iron],
    [iron, iron, iron]
]);
recipes.addShaped(chassisMk3, [
    [null, ironChipset, null],
    [iron, basicPipe, iron],
    [null, ironChipset, null]
]);

recipes.remove(chassisMk4);
recipes.addShaped(chassisMk4, [
    [iron, iron, iron],
    [iron, basicPipe, iron],
    [gold, gold, gold]
]);
recipes.addShaped(chassisMk4, [
    [null, ironChipset, null],
    [iron, basicPipe, iron],
    [null, goldChipset, null]
]);

recipes.remove(chassisMk5);
recipes.addShaped(chassisMk5, [
    [diamondChipset],
    [chassisMk4]
]);