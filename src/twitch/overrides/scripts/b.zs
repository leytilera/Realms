import mods.artisanworktables.builder.RecipeBuilder;
import mods.efabct.EFabRecipe;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

//Basic
function basicShaped(output as IItemStack, input as IIngredient[][]) {
 RecipeBuilder.get("basic").setShaped(input).addOutput(output).create();
 recipes.addShaped(output, input);
}

function basicShapedT(output as IItemStack, input as IIngredient[][], tools as IIngredient[], toolDamage as int[]) {
    val builder = RecipeBuilder.get("basic");
    builder.setShaped(input);
    builder.addOutput(output);
    for i, item in tools {
        builder.addTool(item, toolDamage[i]);
    }
    builder.create();
    EFabRecipe.shaped(output, input).tier("STEAM").time(50);
}

function basicShapedL(output as IItemStack, input as IIngredient[][], fluid as ILiquidStack) {
    RecipeBuilder.get("basic").setShaped(input).addOutput(output).setFluid(fluid).create();
    EFabRecipe.shaped(output, input).fluid(fluid);
}

function basicShapedLT(output as IItemStack, input as IIngredient[][], fluid as ILiquidStack, tools as IIngredient[], toolDamage as int[]) {
    val builder = RecipeBuilder.get("basic");
    builder.setShaped(input);
    builder.addOutput(output);
    builder.setFluid(fluid);
    for i, item in tools {
        builder.addTool(item, toolDamage[i]);
    }
    builder.create();
    EFabRecipe.shaped(output, input).tier("STEAM").time(50).fluid(fluid);
}

function basicShapeless(output as IItemStack, input as IIngredient[]) {
 RecipeBuilder.get("basic").setShapeless(input).addOutput(output).create();
 recipes.addShapeless(output, input);
}

function basicShapelessT(output as IItemStack, input as IIngredient[], tools as IIngredient[], toolDamage as int[]) {
    val builder = RecipeBuilder.get("basic");
    builder.setShapeless(input);
    builder.addOutput(output);
    for i, item in tools {
        builder.addTool(item, toolDamage[i]);
    }
    builder.create();
    EFabRecipe.shapeless(output, input).tier("STEAM").time(50);
}

function basicShapelessL(output as IItemStack, input as IIngredient[], fluid as ILiquidStack) {
    RecipeBuilder.get("basic").setShapeless(input).addOutput(output).setFluid(fluid).create();
    EFabRecipe.shapeless(output, input).fluid(fluid);
}

function basicShapelessLT(output as IItemStack, input as IIngredient[], fluid as ILiquidStack, tools as IIngredient[], toolDamage as int[]) {
    val builder = RecipeBuilder.get("basic");
    builder.setShapeless(input);
    builder.addOutput(output);
    builder.setFluid(fluid);
    for i, item in tools {
        builder.addTool(item, toolDamage[i]);
    }
    builder.create();
    EFabRecipe.shapeless(output, input).tier("STEAM").time(50).fluid(fluid);
}

//Advanced
function advancedShaped(output as IItemStack, input as IIngredient[][]) {
    RecipeBuilder.get("basic").setShaped(input).addOutput(output).create();
    mods.extendedcrafting.TableCrafting.addShaped(2, output, input);
}

function advancedShapeless(output as IItemStack, input as IIngredient[]) {
    RecipeBuilder.get("basic").setShapeless(input).addOutput(output).create();
    mods.extendedcrafting.TableCrafting.addShapeless(2, output, input);
}

//Elite
function eliteShaped(output as IItemStack, input as IIngredient[][]) {
    mods.extendedcrafting.TableCrafting.addShaped(3, output, input);
}

function eliteShapeless(output as IItemStack, input as IIngredient[]) {
    mods.extendedcrafting.TableCrafting.addShapeless(3, output, input);
}

//Ultimate
function ultimateShaped(output as IItemStack, input as IIngredient[][]) {
    mods.extendedcrafting.TableCrafting.addShaped(4, output, input);
}

function ultimateShapeless(output as IItemStack, input as IIngredient[]) {
    mods.extendedcrafting.TableCrafting.addShapeless(4, output, input);
}