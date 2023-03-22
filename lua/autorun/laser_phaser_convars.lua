LASER_PHASER = LASER_PHASER or {}
LASER_PHASER.CVARS = LASER_PHASER.CVARS or {}

local laser_phaser_annonnymous = CreateConVar("ttt_laser_phaser_annonnymous", "1", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local laser_phaser_range = CreateConVar("ttt_laser_phaser_range", "5000", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local laser_phaser_sighting_range = CreateConVar("ttt_laser_phaser_sighting_range", "1000", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})
local laser_phaser_overload_damage = CreateConVar("ttt_laser_phaser_overload_damage", "50", {FCVAR_NOTIFY, FCVAR_ARCHIVE, FCVAR_REPLICATED})

LASER_PHASER.CVARS.laser_phaser_annonnymous = laser_phaser_annonnymous:GetBool()
LASER_PHASER.CVARS.laser_phaser_range = laser_phaser_range:GetInt()
LASER_PHASER.CVARS.laser_phaser_sighting_range = laser_phaser_sighting_range:GetInt()
LASER_PHASER.CVARS.laser_phaser_overload_damage = laser_phaser_overload_damage:GetInt()

if SERVER then

    cvars.AddChangeCallback("ttt_laser_phaser_annonnymous", function(name, old, new)
        LASER_PHASER.CVARS.laser_phaser_annonnymous = util.StringToType(new, "bool")
    end, nil)

    cvars.AddChangeCallback("ttt_laser_phaser_range", function(name, old, new)
        LASER_PHASER.CVARS.laser_phaser_range = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_laser_phaser_sighting_range", function(name, old, new)
        LASER_PHASER.CVARS.laser_phaser_sighting_range = tonumber(new)
    end, nil)

    cvars.AddChangeCallback("ttt_laser_phaser_overload_damage", function(name, old, new)
        LASER_PHASER.CVARS.laser_phaser_overload_damage = tonumber(new)
    end, nil)

end