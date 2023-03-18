require "0_Utilities/SuperSurvivorWeaponsRegistry"

-- TO DO Add Comments
-- Explain what exactly this file does.  Why are the duplicates for example. (if that isnt wrong...)
-- Does that increase the odds of that weapon being chosen? eg. Base.Plank (at this point not assuming anything)

-- Few changes in ranged weapons to address an issue of firearms with magazines.  Thanks you Darkswirl#5543
-- Cleaned it up formatting wise and readability.  Got rid of the crazy long lines...

-- Melee table section
MeleWeapons = {
    "Base.Hammer", "Base.BallPeenHammer", "Base.WoodenMallet", "Base.Wrench", "Base.PipeWrench", "Base.Shovel",
	"Base.Shovel2", "Base.Rake", "Base.Plank", "Base.Plank", "Base.Plank", "Base.Plank", "Base.PlankNail",
	"Base.PlankNail", "Base.PlankNail", "Base.MetalPipe", "Base.MetalBar", "Base.BaseballBat", "Base.BaseballBat",
	"Base.BaseballBat",	"Base.BaseballBatNails", "Base.Golfclub", "Base.TennisRacket", "Base.BadmintonRacket",
	"Base.Poolcue", "Base.HockeyStick", "Base.LaCrosseStick", "Base.IcePick", "Base.Pan", "Base.Saucepan",
	"Base.GridlePan", "Base.RollingPin", "Base.Axe", "Base.HandAxe", "Base.WoodAxe", "Base.Pickaxe", "Base.AxeStone",
	"Base.HandScythe", "Base.KitchenKnife", "Base.HuntingKnife", "Base.Machete",
	-- Spears freezing in animation?? need info on this...
	"Base.SpearCrafted", "Base.SpearCrafted", "Base.SpearKnife", "Base.SpearScissors", "Base.SpearScrewdriver",
	"Base.SpearHuntingKnife"
};
-- Removed from list
-- "Base.RollingPin"  --acts as a torch, sets target on fire
-- "Base.GuitarAcoustic","Base.GuitarElectricBlack","Base.GuitarElectricBassBlue","Base.Flute" Slow animations
-- Already hidden, Reasons Unknown
-- "Base.Sledgehammer","Base.SnowShovel","Base.LeafRake","Base.Plunger","Base.Crowbar","Base.FishingRod","Base.Spoon",
-- "Base.Fork","Base.Screwdriver","Base.Scalpel","Base.Stake","Base.GardenFork","Base.WoodenLance","Base.Katana"

-- Mod check, adding custom weapon(s) if possible...
if isModEnabled("ChainSaw") then
    table.insert(MeleWeapons, "ChainSaw.ChainSaw");
end

if isModEnabled("Hydrocraft") then
    table.insert(MeleWeapons, "Hydrocraft.HCAluminiumbat");
    table.insert(MeleWeapons, "Hydrocraft.HCBaseballbatbarbedwire");
    table.insert(MeleWeapons, "Hydrocraft.HCHatchetiron");
    table.insert(MeleWeapons, "Hydrocraft.HCKnifeiron");
    table.insert(MeleWeapons, "Hydrocraft.HCKatana");
    table.insert(MeleWeapons, "Hydrocraft.HCMachete");
    table.insert(MeleWeapons, "Hydrocraft.HCMonkeywrench");
    table.insert(MeleWeapons, "Hydrocraft.HCKnifesteel");
    table.insert(MeleWeapons, "Hydrocraft.HCHatchetsteel");
    table.insert(MeleWeapons, "Hydrocraft.HCSurvivalaxe");
    table.insert(MeleWeapons, "Hydrocraft.HCWrench");
    table.insert(MeleWeapons, "Hydrocraft.HCRake");
end

if isModEnabled("Brita") then
    table.insert(MeleWeapons, "Brita.RamboKnife");
    table.insert(MeleWeapons, "Brita.BGMachete");
    table.insert(MeleWeapons, "Brita.DingDong");
    table.insert(MeleWeapons, "Brita.Tactical_Axe");
    table.insert(MeleWeapons, "Brita.Tactical_Sickle");
end

-- Ranged weapon section
RangeWeapons = {
	"Base.Pistol2", "Base.Revolver_Short", "Base.Revolver", "Base.Pistol", "Base.Revolver_Long", "Base.VarmintRifle",
	"Base.HuntingRifle", "Base.Pistol", "Base.Shotgun", "Base.ShotgunSawnoff", "Base.Pistol", "Base.Shotgun"
};

if isModEnabled("ORGM") then
    -- add some rare auto orgm guns
    table.insert(RangeWeapons, "ORGM.Mac11")
    table.insert(RangeWeapons, "ORGM.Glock17")
    table.insert(RangeWeapons, "ORGM.Ber93R")
    table.insert(RangeWeapons, "ORGM.M16")
end

-- Weapons (firearms) compatibility with Brita's Weapon Pack
-- Weapons chosen based on criteria;
-- 1. Existence of production models, not just a few prototypes
-- 2. Has a clearly identifiable production and service history
-- 3. Can be reasonably believed that an American would have access to,
--    or have the knowledge on how to attain upon social collapse
-- 4. Highly reliable in an apocalyptic setting. Also fun to use.
-- ** Thank you EpiKality for this and other Brita's compatibility code!

if isModEnabled("Brita") then
    table.insert(RangeWeapons, "Brita.KS23");
    table.insert(RangeWeapons, "Brita.KS23_S");
    table.insert(RangeWeapons, "Brita.KS23_S_Pistol");
    table.insert(RangeWeapons, "Brita.Colt_Service38");
    table.insert(RangeWeapons, "Brita.Colt_Service45");
    table.insert(RangeWeapons, "Brita.Colt_Navy_1851");
    table.insert(RangeWeapons, "Brita.M1887");
    table.insert(RangeWeapons, "Brita.M1887_Sawed");
    table.insert(RangeWeapons, "Brita.M29_44");
    table.insert(RangeWeapons, "Brita.M29_44Carbine");
    table.insert(RangeWeapons, "Brita.Shorty");
    table.insert(RangeWeapons, "Brita.M1014_Stock");
    table.insert(RangeWeapons, "Brita.M1014");
    table.insert(RangeWeapons, "Brita.M1014_Fold");
    table.insert(RangeWeapons, "Brita.M1014_Wick");
    table.insert(RangeWeapons, "Brita.SPAS12_Fixed");
    table.insert(RangeWeapons, "Brita.SPAS12_Stock");
    table.insert(RangeWeapons, "Brita.M870");
    table.insert(RangeWeapons, "Brita.M870_Wingmaster");
    table.insert(RangeWeapons, "Brita.M870_Police");
    table.insert(RangeWeapons, "Brita.M870_MCS");
    table.insert(RangeWeapons, "Brita.M870_Express");
    table.insert(RangeWeapons, "Brita.M870_Breaching");
    table.insert(RangeWeapons, "Brita.M870_CQB");
    table.insert(RangeWeapons, "Brita.M40");
    table.insert(RangeWeapons, "Brita.M40A1");
    table.insert(RangeWeapons, "Brita.M40A2");
    table.insert(RangeWeapons, "Brita.M40A3");
    table.insert(RangeWeapons, "Brita.Taurus856");
    table.insert(RangeWeapons, "Brita.GP100_2");
    table.insert(RangeWeapons, "Brita.GP100_4");
    table.insert(RangeWeapons, "Brita.GP100_6");
    table.insert(RangeWeapons, "Brita.Ruger_No1_3006");
    table.insert(RangeWeapons, "Brita.Ruger_No1_308");
    table.insert(RangeWeapons, "Brita.Ruger_No1_4570");
    table.insert(RangeWeapons, "Brita.Judge_45LC");
    table.insert(RangeWeapons, "Brita.Judge_410g");
    table.insert(RangeWeapons, "Brita.Judge513_45LC");
    table.insert(RangeWeapons, "Brita.Judge513_410g");
    table.insert(RangeWeapons, "Brita.Judge513_Long_45LC");
    table.insert(RangeWeapons, "Brita.Judge513_Long_410g");
    table.insert(RangeWeapons, "Brita.TXS_804_45LC");
    table.insert(RangeWeapons, "Brita.TXS_804_410g");
    table.insert(RangeWeapons, "Brita.VIPER_G2");
    table.insert(RangeWeapons, "Brita.BowTechSR_350");
    table.insert(RangeWeapons, "Brita.HoytSpectra+1000");
    table.insert(RangeWeapons, "Brita.Genesis_X_Bow");
    table.insert(RangeWeapons, "Brita.Genesis_Bow");
    table.insert(RangeWeapons, "Brita.Genesis_Mini_Bow");
    table.insert(RangeWeapons, "Brita.HZRedback_RTS");
    table.insert(RangeWeapons, "Brita.TenPointVaporRS_470");
    table.insert(RangeWeapons, "Brita.MissionMXB_400");
    table.insert(RangeWeapons, "Brita.TenPointTurbo_XLT");
    table.insert(RangeWeapons, "Brita.TAC15");
    table.insert(RangeWeapons, "Brita.HortonScout_125");
    table.insert(RangeWeapons, "Brita.Moss500_20");
    table.insert(RangeWeapons, "Brita.ROYAL_SXS");
    table.insert(RangeWeapons, "Brita.Colt1885");
    table.insert(RangeWeapons, "Brita.10855_Silver");
    table.insert(RangeWeapons, "Brita.SW_M500");
    table.insert(RangeWeapons, "Brita.Revolver_Short");
    table.insert(RangeWeapons, "Brita.Revolver_Short_357");
    table.insert(RangeWeapons, "Brita.Revolver");
    table.insert(RangeWeapons, "Brita.Revolver_357");
    table.insert(RangeWeapons, "Brita.Revolver_Long");
    table.insert(RangeWeapons, "Brita.Revolver_Long_357");
    table.insert(RangeWeapons, "Brita.VarmintRifle");
    table.insert(RangeWeapons, "Brita.HuntingRifle");
    table.insert(RangeWeapons, "Brita.BOAR");
    table.insert(RangeWeapons, "Brita.BFG50");
    table.insert(RangeWeapons, "Brita.Harris50");
    table.insert(RangeWeapons, "Brita.Sako85");
    table.insert(RangeWeapons, "Brita.Savage12");
    table.insert(RangeWeapons, "Brita.Win_1894");
    table.insert(RangeWeapons, "Brita.Win_1895");
    table.insert(RangeWeapons, "Brita.Viper");
    table.insert(RangeWeapons, "Brita.Winchester1873");
    table.insert(RangeWeapons, "Brita.Winchester1866");
    table.insert(RangeWeapons, "Brita.M1936");
    table.insert(RangeWeapons, "Brita.DT11");
    table.insert(RangeWeapons, "Brita.DT11_Sawed");
    table.insert(RangeWeapons, "Brita.DT11_Pistol");
    table.insert(RangeWeapons, "Brita.Coachgun");
    table.insert(RangeWeapons, "Brita.Coachgun_Sawed");
    table.insert(RangeWeapons, "Brita.Coachgun_Pistol");
    table.insert(RangeWeapons, "Brita.Terminator");
    table.insert(RangeWeapons, "Brita.Terminator_Fold");
    table.insert(RangeWeapons, "Brita.Triple_Crown");
    table.insert(RangeWeapons, "Brita.KSG");
    table.insert(RangeWeapons, "Brita.KSG_OPEN");
    table.insert(RangeWeapons, "Brita.KSG25");
    table.insert(RangeWeapons, "Brita.UTS15");
    table.insert(RangeWeapons, "Brita.R11_87");
    table.insert(RangeWeapons, "Brita.A400");
    table.insert(RangeWeapons, "Brita.DAO12");
    table.insert(RangeWeapons, "Brita.DAO12_Fold");
    table.insert(RangeWeapons, "Brita.AUTO_5");
    table.insert(RangeWeapons, "Brita.Shorty_Pistol_Grip");
    table.insert(RangeWeapons, "Brita.Shorty_Pistol");
    table.insert(RangeWeapons, "Brita.M1897");
    table.insert(RangeWeapons, "Brita.TOZ106");
    table.insert(RangeWeapons, "Brita.TOZ106_Fold");
    table.insert(RangeWeapons, "Brita.TOZ194_Pistol");
    table.insert(RangeWeapons, "Brita.MP133S_Pistol");
    table.insert(RangeWeapons, "Brita.MP133");
    table.insert(RangeWeapons, "Brita.Ithaca_M37");
    table.insert(RangeWeapons, "Brita.NEF_Handi_38");
    table.insert(RangeWeapons, "Brita.NEF_Handi_38_Sawed");
    table.insert(RangeWeapons, "Brita.NEF_Handi_357");
    table.insert(RangeWeapons, "Brita.NEF_Handi_357_Sawed");
    table.insert(RangeWeapons, "Brita.NEF_Handi_45LC");
    table.insert(RangeWeapons, "Brita.NEF_Handi_45LC_Sawed");
    table.insert(RangeWeapons, "Brita.NEF_Handi_410");
    table.insert(RangeWeapons, "Brita.NEF_Handi_410_Sawed");
    table.insert(RangeWeapons, "Brita.Thompson_Center_308");
    table.insert(RangeWeapons, "Brita.Thompson_Center_3006");
    table.insert(RangeWeapons, "Brita.Thompson_Center_4570");
    table.insert(RangeWeapons, "Brita.SPAS12_Fixed");
    table.insert(RangeWeapons, "Brita.SPAS12_Fold");
    table.insert(RangeWeapons, "Brita.SPAS12_Stock");
end