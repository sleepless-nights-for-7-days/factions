# Features

## Phase 1: MVP
Feature | Description
--- | ---
Map | 4k nitro map with a single Trader around the center of the map and a large fortresses (custom prefab) manually added into 2 corners/sides of the map
Job System | Provide some starting gear in chests at each home base
Team Management | establish a method for manually forcing players into teams/allies. Admin will manually teleport you to the appropriate team base
Automation | server is started up, shut down, and wiped manually for prepared game sessions

## Phase 2: Quality of Life Improvements
Feature | Description
--- | ---
Map | add a fleet of vehicles and starting crafting areas as part of the prefab.. determine if it's possible to pre-set a claim block and tie its ownership to someone on either team
Job System | Modify starting items or starting quest to provide a way to choose a Job to receive items and an XP dump (enough for 100 levels or so)
Team Management | as part of new game setup, you choose the team you'll be on and will be teleported automatically to that team's base
Team Locking | UI in-game prevents manual adjustment of allies so that teams are locked
Respawn | Respawning is locked to team base and bedrolls are removed from the game
Automation | server is always on and runs on a scheduled shutdown/wipe (helpful if more people get into it)

## Phase 3: Final State
Feature | Description
--- | ---
Map | map generation is automatic custom per game and applies a random assortment of prefab bases based on input
Job System | Greet new player with selection box to choose Job. Upon selection, base equipment is dumped into inventory, equipped, and a set of skills related to that Job are acquired
Team Management | you will have a squad picker UI that allows you to see who is on what team. The game can be started once everyone has indicated they are ready or after some time has passed and players are locked to their teams
Automation | players connect to a server manager which triggers the start of a new game/map if one is not already in progress. More server instances can be added to address load, which is automatically monitored at a cloud controller level... this could get costly, but I'd probably start taking donations at that point

## Dream Features
Feature | Description
--- | ---
Extreme Map Automation | players could connect to the server, choose team and map options (including number of teams; supporting 2, 3, or 4 teams), then the server will provide a random password that all players will need to write down. After 1 minute, the server will shut down, generate a random Nitro map with the options provided, modify player profiles such that they start with the options selected, and the server will come back up with the password provided before. Upon game completion, server would shut down, clear map, select very light standby map without password, and wait for input from players again.
Outpost Control System | Outposts can be scattered across the map (or placed in key locations) and can be taken over.. perhaps by standing in the area for a sufficient amount of time, breaking a block, or something like that. Outposts can be used to teleport to from home base... or perhaps Outposts will have a single chest that shares storage with home base's chest, making it possible to easily transfer resources over long distances. Outposts cannot be destroyed, only taken over

## Donated Ideas
Credit | Feature | Description
`tormania1` | Sapper | Gatherers or Crafters should be extremely proficient with base destruction, which would give them the opportunity to be more helpful for cracking into the enemy castle. We can wall this feature behind some technical progression so it can't be used at the beginning of the game... but could be a target for how make base infiltration easier
