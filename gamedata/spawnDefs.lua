--------------------------------------------------------------------------------
--Robot Defense Config
--------------------------------------------------------------------------------

local GetModOptions =
  Spring.GetModOptions

settingMaxBurrows =
  20
settingBurrowhp =
  tonumber(
  GetModOptions(

  ).mo_custom_burrowshp
) or
  8600
settingGracePeriod =
  tonumber(
  GetModOptions(

  ).mo_graceperiod
) or
  160 -- no chicken spawn in this period, seconds
settingQueenTime =
  (GetModOptions(

).mo_queentime or
  40) *
  60 -- time at which the queen appears, seconds
settingAddQueenAnger =
  tonumber(
  GetModOptions(

  ).mo_queenanger
) or
  1
burrowSpawnType =
  GetModOptions(

).mo_chickenstart or
  "avoid"
settingAAUnits =
  GetModOptions(

).mo_aa_units or
  1
spawnSquare =
  90 -- size of the chicken spawn square centered on the burrow
spawnSquareIncrement =
  2 -- square size increase for each unit spawned
burrowName =
  "rroost" -- burrow unit name
settingMaxAge =
  tonumber(
  GetModOptions(

  ).mo_maxage
) or
  300 -- chicken die at this age, seconds
local mo_queendifficulty =
  GetModOptions(

)[
  "mo_queendifficulty"
] or
  "n_chickenq"
settingQueenName =
  mo_queendifficulty ..
  "r"
settingBurrowDef =
  UnitDefNames[
  burrowName
].id
defenderChance =
  0.5 -- probability of spawning a single turret
maxTurrets =
  3 -- Max Turrets per burrow
burrowSpawnRate =
  60
minBaseDistance =
  600
maxBaseDistance =
  7200
chickensPerPlayer =
  8
spawnChance =
  0.5
settingBonusTurret =
  "armrl" -- Turret that gets spawned when a burrow dies
angerBonus =
  0.25
expStep =
  0.0625
waves = {}
newWaveSquad = {}

bonusTurret5a =
  "armflak"
bonusTurret5b =
  "armbrtha2"
bonusTurret7a =
  "corpre"
bonusTurret7b =
  "armamd1"
bonusTurret7c =
  "cordoom"

settingCommanders = {
  --Core
  corcom = true,
  corcom1 = true,
  corcom3 = true,
  corcom5 = true,
  corcom6 = true,
  corcom7 = true,
  --Arm
  armcom = true,
  armcom1 = true,
  armcom2 = true,
  armcom3 = true,
  --The lost legacy
  tllcom = true,
  tllcom1 = true,
  tllcom2 = true,
  tllcom3 = true,
  --TALON
  talon_com = true,
  talon_com1 = true,
  talon_com2 = true,
  talon_com3 = true,
  --GOK
  gok_com = true,
  gok_com1 = true,
  gok_com2 = true,
  gok_com3 = true,
  --RUMAD
  rumad_com = true,
  rumad_com1 = true,
  rumad_com2 = true,
  rumad_com3 = true
}

settingNeutralUnits = {
  corpunk = true,
  corak = true,
  corfav = true,
  armflea = true,
  armpw = true,
  armfav = true,
  armflash = true,
  tllbug = true,
  tllprivate = true,
  tllgladius = true,
  talon_infantry = true,
  talon_topaz = true,
  gok_negator = true,
  rumad_dragster = true
}

VERYEASY =
  "Robot: Very Easy"
EASY =
  "Robot: Easy"
NORMAL =
  "Robot: Normal"
HARD =
  "Robot: Hard"
VERYHARD =
  "Robot: Very Hard"
INSANE =
  "Robot: Insane"
CUSTOM =
  "Robot: Custom"
SURVIVAL =
  "Robot: Survival"

settingModes = {
  [1] = VERYEASY,
  [2] = EASY,
  [3] = NORMAL,
  [4] = HARD,
  [5] = VERYHARD,
  [6] = INSANE,
  [7] = CUSTOM,
  [8] = SURVIVAL
}

for i, v in ipairs(
  settingModes
) do -- make it bi-directional
  settingModes[
      v
    ] =
    i
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local defenders = {
  armrl = true,
  armflak = true,
  armbrtha = true,
  corpre = true,
  armamd1 = true,
  cordoom = true
}

settingForceGround = {
  arm_broadside = true,
  armhope = true,
  armarch = true,
  cdevastator = true,
  corvaliant = true,
  cordust = true,
  core_core = true,
  tllbarbarus = true,
  tllzeppelin = true,
  tllzeppelin1 = true,
  talon_independence = true,
  talon_gold = true,
  talon_cerberus = true,
  gok_octopus = true,
  gok_apocalypse = true,
  gok_darkdeus = true,
  rumad_jafa = true,
  rumad_lago = true
}

settingBlackList = {
  -- Jammer/Radar
  armorbweaver = true,
  armaser = true,
  armmark = true,
  armspy = true,
  armjam = true,
  armseer = true,
  armdetector = true,
  armconcealer = true,
  armawac = true,
  armsr71 = true,
  corwatcher = true,
  corblotter = true,
  corvrad = true,
  coreter = true,
  corspec = true,
  corvoyr = true,
  corspy = true,
  coreverifier = true,
  corfink = true,
  corsjam = true,
  core_aircarry = true,
  tllrsplane = true,
  tllconfuser = true,
  tllobserver = true,
  tllspy = true,
  tllobscurer = true,
  tlldivine = true,
  tllhjam = true,
  tllmixer = true,
  tllhickatee = true,
  tllsoftshell = true,
  talon_vigilante = true,
  talon_spy	= true,
  talon_husher = true,
  talon_unobtanium = true,
  talon_scantron = true,
  talon_reality = true,
  talon_mirage = true,
  talon_anonymous = true,
  gok_demoneye = true,
  gok_mjamk = true,
  gok_mradk = true,
  gok_spy = true,
  gok_mjam = true,
  gok_mrad = true,
  rumad_mkjam = true,
  rumad_mkrad = true,
  rumad_spy = true,
  rumad_mjam = true,
  rumad_mrad = true,
  -- Anti-Nuke
  armscab = true,
  talon_tribulation = true,
  cormabm = true,
  tllturtle = true,
  talon_tribulation = true,
  gok_morningstar = true,
  rumad_mantinuke = true,
  -- Scouts
  armpeep = true,
  corawac = true,
  tllprob = true,
  talon_recon = true,
  gok_vision = true,
  gok_ssub = true,
  rumad_ascout_lvl1 = true,
  rumad_ascout_lvl2 = true,
  rumad_meyes = true,
  -- Torpedo
  armlance = true,
  armundertow = true,
  corangler = true,
  cortitan = true,
  tlltorpp = true,
  tllhopomis = true,
  tllasship = true,
  tllleatherback = true,
  talon_trident = true,
  talon_ash = true,
  gok_revenant = true,
  gok_exorcist = true,
  gok_cancer = true,
  -- Turrets
  armclaw = true,
  cormaw = true,
  tllfflak = true,
  -- Shields
  rumad_gate2 = true,
  rumad_gate = true,
  rumad_gate4 = true,
  corshieldgen = true,
  armshieldgen = true,
  armbeetle = true,
  -- Other
  e_chickenqr = true,
  fh_chickenqr = true,
  h_chickenqr = true,
  n_chickenqr = true,
  ve_chickenqr = true,
  vh_chickenqr = true,
  rroost = true,
  rumad_win = true,
  rumad_sfusion = true,
  rumad_solar = true,
  rumad_metalmakerlvl1 = true,
  rumad_metalmakerlvl2 = true,
  rumad_metalmakerlvl3 = true,
  rumad_fusion = true,
  -- transports
  armatlas = true,
  armtship = true,
  armdfly = true,
  armmuat = true,
  armlift = true,
  arm_aircarry = true,
  cormuat = true,
  cortship = true,
  corvalk = true,
  corseahook = true,
  core_uncle = true,
  corlift = true,
  corcarry = true,
  corucar = true,
  talon_bishop = true,
  talon_rukh = true,
  talon_tau = true,
  talon_wyvern = true,
  talon_plutor = true,
  talon_carry = true,
  talon_ucar = true,
  tllambassador = true,
  tllbtrans = true,
  tllrobber = true,
  tlltplane = true,
  tllcarry = true,
  tllucar = true,
  gok_chariot = true,
  gok_wordbearer = true,
  gok_benne = true,
  gok_lift = true,
  gok_carry = true,
  gok_ucar = true,
  rumad_airtrans_lvl1 = true,
  rumad_airtrans_lvl2 = true,
  -- Can't target tnt
  armvader = true,
  coretnt = true,
  corroach = true,
  corsktl = true,
  gok_blackheart = true,
  talon_herison = true,
  talon_sphere = true,
  tllcrawlb = true,
  -- Useless for them
  armkrypto = true,
  -- Satellite
  talon_planetkiller = true,
  rumar_thirdeye = true
}

local aaUnits = {
  -- ARM AA Units
  armjeth = true,
  armyork = true,
  armaak = true,
  armeak = true,
  armah = true,
  armhuntsman = true,
  armsam = true,
  armeflak = true,
  armiguana = true,
  -- CORE AA Units
  corcrash = true,
  coraak = true,
  corsent = true,
  coreak = true,
  corah = true,
  corfrog = true,
  corsent = true,
  coraapod = true,
  cormist = true,
  coramist = true,
  -- TLL AA Units
  tllhoplit = true,
  tllfirestarter = true,
  tllaak = true,
  tllpuncher = true,
  tllhovermissile = true,
  tllloggerhead = true,
  tllmantis = true,
  tllhflak = true,
  -- TALON AA Units
  talon_rebel = true,
  talon_sheatiped = true,
  talon_cataphract = true,
  talon_striker = true,
  talon_vanguard = true,
  talon_eak = true,
  talon_expanse = true,
  -- GOK AA Units
  gok_stung = true,
  gok_earthstrike = true,
  gok_seastrike = true,
  gok_seastrike1 = true,
  gok_harbinger = true,
  gok_pains = true,
  gok_curred = true,
  gok_nahash = true,
  -- RUMAD AA Units
  rumad_ak = true,
  rumad_jeag = true,
  rumad_aak = true,
  rumad_borer = true,
  rumad_eak = true,
  rumad_mflak = true,
  rumad_uflak = true
}

-- implemention of mo_aa_units
if
  not settingAAUnits
 then
  for k in pairs(
    aaUnits
  ) do
    settingBlackList[
        k
      ] =
      true
  end
end

-- We have random all units, so make chickenType for all of them
local chickenTypes = {}
for _, ud in ipairs(
  UnitDefs
) do
  if
    not settingBlackList[
      ud.name
    ] and
      ud.isBuilder ==
        false and
      not settingCommanders[
        ud.name
      ]
   then
    chickenTypes[
        ud.name
      ] =
      true
  end
end

local function Copy(
  original)
  local copy = {}
  for k, v in pairs(
    original
  ) do
    if
      (type(
        v
      ) ==
        "table")
     then
      copy[
          k
        ] =
        Copy(
        v
      )
    else
      copy[
          k
        ] =
        v
    end
  end
  return copy
end

difficulties = {
  [VERYEASY] = {
    numWaves = 24,
    costMultiplier = 0.4,
    burrowSpawnRate = 120,
    kingMaxUnits = 0,
    angerBonus = 0.05,
    expStep = 0,
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = 0,
    maxRobots = 30,
    spawnChance = 45,
    damageMod = 0.6,
    kingMaxUnits = 15
  },
  [EASY] = {
    numWaves = 24,
    costMultiplier = 0.5,
    burrowSpawnRate = 120,
    kingMaxUnits = 3,
    angerBonus = 0.075,
    expStep = 0.09375,
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = 8,
    maxRobots = 40,
    spawnChance = 55,
    damageMod = 0.75,
    kingMaxUnits = 20
  },
  [NORMAL] = {
    numWaves = 30,
    costMultiplier = 0.6,
    burrowSpawnRate = 105,
    kingMaxUnits = 8,
    angerBonus = 0.10,
    expStep = 0.125,
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = 12,
    maxRobots = 60,
    spawnChance = 65,
    damageMod = 1,
    kingMaxUnits = 30
  },
  [HARD] = {
    numWaves = 34,
    costMultiplier = 0.7,
    burrowSpawnRate = 60,
    kingMaxUnits = 10,
    angerBonus = 0.125,
    expStep = 0.25,
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = 16,
    maxRobots = 65,
    spawnChance = 75,
    damageMod = 1.1,
    kingMaxUnits = 32
  },
  [VERYHARD] = {
    numWaves = 53,
    costMultiplier = 0.8,
    burrowSpawnRate = 40,
    kingMaxUnits = 12,
    angerBonus = 0.15,
    expStep = 0.4,
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = 20,
    maxRobots = 50,
    spawnChance = 80,
    damageMod = 1.15,
    kingMaxUnits = 35
  },
  [INSANE] = {
    numWaves = 80,
    costMultiplier = 1,
    burrowSpawnRate = 28,
    kingMaxUnits = 15,
    angerBonus = 0.20,
    expStep = 0.6,
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = 30,
    maxRobots = 60,
    spawnChance = 80,
    damageMod = 1.2,
    kingMaxUnits = 40
  },
  [CUSTOM] = {
    numWaves = tonumber(
      GetModOptions(

      ).mo_custom_numwaves
    or 80),
    costMultiplier = tonumber(
      GetModOptions(

      ).mo_custom_cost_multiplier
    or 1.2),
    burrowSpawnRate = tonumber(
      GetModOptions(

      ).mo_custom_burrowspawn
    or 28),
    kingMaxUnits = tonumber(
      GetModOptions(

      ).mo_custom_kingmaxunits
    or 15),
    angerBonus = tonumber(
      GetModOptions(

      ).mo_custom_angerbonus
    or 0.2),
    expStep = (tonumber(
      GetModOptions(

      ).mo_custom_expstep
    ) or
      0.6),
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = tonumber(
      GetModOptions(

      ).mo_custom_minchicken or
        30
    ),
    maxRobots = tonumber(
      GetModOptions(

      ).mo_custom_maxchicken or
        80
    ),
    spawnChance = (tonumber(
      GetModOptions(

      ).mo_custom_spawnchance
    ) or
      80),
    damageMod = (tonumber(
      GetModOptions(

      ).mo_custom_damagemod
    ) or
      1.2),
    kingMaxUnits = 40
  },
  [SURVIVAL] = {
    numWaves = 80,
    costMultiplier = 1,
    burrowSpawnRate = 105,
    kingMaxUnits = 10,
    angerBonus = 25,
    expStep = 0.125,
    chickenTypes = Copy(
      chickenTypes
    ),
    defenders = Copy(
      defenders
    ),
    minRobots = 9,
    maxRobots = 60,
    spawnChance = 40,
    damageMod = 1,
    kingMaxUnits = 30
  }
}

settingDefaultDifficulty =
  "Robot: Normal"

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- New Waves Logic

-- settingWaves structure
-- [<% kingAnger>] = {
--   anger = <% of kinganger>
--   units_multi = minRobots = <this * minRobots>, maxRobots = <this * maxRobots>
--   <class> = {
--      mincost = <min cost of unit>
--      maxcost = <max cost of unit * mo_custom_cost_multiplier>
--   },
--   max_wavecost = <max cost of wave (num of wave units * this * mo_custom_cost_multiplier)>
-- }

settingWaves = {}
table.insert(
  settingWaves,
  {
    anger = 0,
    units_multi = 1,
    air = {
      mincost = 0,
      maxcost = 80
    }, -- CORE bladew
    air_fighter = {
      mincost = 0,
      maxcost = 0
    },
    ground = {
      mincost = 0,
      maxcost = 80
    }, -- TLL Private
    max_wavecost = 100
  }
)
table.insert(
  settingWaves,
  {
    anger = 5,
    units_multi = 1,
    air = {
      mincost = 0,
      maxcost = 80
    }, -- CORE BLADEW
    air_fighter = {
      mincost = 0,
      maxcost = 190
    }, -- TLL Sparrow
    ground = {
      mincost = 75,
      maxcost = 246
    }, -- ARM Stumpy
    max_wavecost = 100
  }
)
table.insert(
  settingWaves,
  {
    anger = 10,
    units_multi = 1,
    air = {
      mincost = 0,
      maxcost = 275
    }, -- TLL WASP
    air_fighter = {
      mincost = 0,
      maxcost = 190
    }, -- TLL Sparrow
    ground = {
      mincost = 75,
      maxcost = 246
    }, -- ARM Stumpy
    max_wavecost = 100
  }
)
table.insert(
  settingWaves,
  {
    anger = 20,
    units_multi = 1,
    air = {
      mincost = 80,
      maxcost = 275
    }, -- TLL WASP
    air_fighter = {
      mincost = 0,
      maxcost = 190
    }, -- TLL Sparrow
    ground = {
      mincost = 370,
      maxcost = 1963
    }, -- ARM Fatboy -- T2
    max_wavecost = 100
  }
)
table.insert(
  settingWaves,
  {
    anger = 30,
    units_multi = 1,
    air = {
      mincost = 276,
      maxcost = 683
    }, -- TLL GHOST
    air_fighter = {
      mincost = 0,
      maxcost = 476
    }, -- TLL Falcon
    ground = {
      mincost = 370,
      maxcost = 5673
    }, -- TLL Binder -- T2
    max_wavecost = 100
  }
)
table.insert(
  settingWaves,
  {
    anger = 40,
    units_multi = 1,
    air = {
      mincost = 276,
      maxcost = 683
    }, -- TLL GHOST
    air_fighter = {
      mincost = 0,
      maxcost = 190
    }, -- TLL Sparrow
    ground = {
      mincost = 1480,
      maxcost = 10000
    }, -- talon_visitant
    max_wavecost = 100
  }
)
table.insert(
  settingWaves,
  {
    anger = 50,
    units_multi = 1,
    air = {
      mincost = 276,
      maxcost = 683
    }, -- TLL GHOST
    air_fighter = {
      mincost = 191,
      maxcost = 476
    }, -- TLL Falcon
    ground = {
      mincost = 10000,
      maxcost = 20000
    }, -- CORE KrogTaar - T2.5
    max_wavecost = 50
  }
)
table.insert(
  settingWaves,
  {
    anger = 60,
    units_multi = 0.6,
    air = {
      mincost = 276,
      maxcost = 3942
    }, -- ARM LICHE
    air_fighter = {
      mincost = 191,
      maxcost = 476
    }, -- TLL Falcon
    ground = {
      mincost = 20000,
      maxcost = 40000
    }, -- ARM Vengence - T2.5
    max_wavecost = 45
  }
)
table.insert(
  settingWaves,
  {
    anger = 70,
    units_multi = 0.5,
    air = {
      mincost = 3942,
      maxcost = 7600
    }, -- CORE KROW
    air_fighter = {
      mincost = 191,
      maxcost = 476
    }, -- TLL Falcon
    ground = {
      mincost = 20000,
      maxcost = 108726.688
    }, -- TALON Silver
    max_wavecost = 35
  }
)
table.insert(
  settingWaves,
  {
    anger = 80,
    units_multi = 0.4,
    air = {
      mincost = 7600,
      maxcost = 17244
    }, -- TLL Aether
    air_fighter = {
      mincost = 477,
      maxcost = 1754
    }, -- TLL Shrike
    ground = {
      mincost = 108726.688,
      maxcost = 180000
    }, -- TLL Mini Hero
    max_wavecost = 30
  }
)
table.insert(
  settingWaves,
  {
    anger = 90,
    units_multi = 0.3,
    air = {
      mincost = 7600,
      maxcost = 17244
    }, -- TLL Aether
    air_fighter = {
      mincost = 1700,
      maxcost = 19000
    }, -- ARM Stratus
    ground = {
      mincost = 256999,
      maxcost = 9000000
    }, -- TALON INDEPENDENCE - Pizza
    max_wavecost = 25
  }
)
table.insert(
  settingWaves,
  {
    anger = 100,
    units_multi = 0.3,
    air = {
      mincost = 7600,
      maxcost = 17244
    }, -- TLL Aether
    air_fighter = {
      mincost = 1700,
      maxcost = 19000
    }, -- ARM Stratus
    ground = {
      mincost = 256999,
      maxcost = 9000000
    }, -- TALON INDEPENDENCE - Pizza
    max_wavecost = 25
  }
)