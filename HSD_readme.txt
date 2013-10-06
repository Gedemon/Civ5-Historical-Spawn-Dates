Historical Spawn Dates
for Civilization 5
v.7

	-- Presentation --


	-- Installation --


	-- Credits & thanks --

Rhye, whoward69, Whys

	-- To do --


	-- version history --

v.6 (Aug 06, 2013) :
- Bugfix: add minimum date before domination (1200 AD), culture (1500 AD) and diplomatic (1700 AD) victories are possible to prevent victory when a civilization spawns alone before every others.
- Balance: make culture, faith and gold bonuses relative to the number of civilizations (was uncapped before)
- Change: set Carthage HSD to 650 BC

v.5 (July 09, 2013) :
- Bugfix: barbarian conversion range was bigger than expected.
- Feature: spawn a City for the AI if the starting Position is not overlapping with another Civilization. This should fix the issue when the AI decide to move it's initial settler.
- Feature: add a 'NoFreeTech' tag to the HSD table, which prevent some Civilizations to get the global free techs on spawn (used to prevent the "new world" to be more advanced in research than the "old world")
- Balance: don't let CS units to wander around after the CS have been converted by a spawning Civilization.
 
v.4 (May 23, 2013) :
- Bugfix: check if an unit is still on the plot where looping on before trying to convert it.
- Auto-close "Who's Winning" and Natural Wonders popups for "sleeping" human player.
	
v.3 (May 12, 2013) :
- Use only civilization that have settled at least one city for balance calculations
- Add a "land culture" value for balance, given to the first city (it will grab new tiles faster the first turns)
- Add a "population" value for balance, given to the first city (food value in that city will be 75% filled to prevent immediate loss from starvation)
- Bugfix: don't fail at initialization when a civilization is not listed in the HSD table
- Use in game auto-turn function instead of custom function
- Add columns in Civilization_HistoricalSpawnDates table to set initial units for each civilizations and CS. (use fixed list if the table entry for units is empty)
- Give all techs that are known by all settled civilization when creating first city
- Add option (default ON) to balance per science points instead of free techs for the other known techs.
- Give all techs that are known by all settled civilization when creating first city
- Add option (default ON) to balance per culture points instead of free policies (free policies are OP for late spawn civilizations)


v.1 / v.2 (Mar 01, 2013) :
- initial release on CFC

==========================================================================================
STEAM DESCRIPTION
==========================================================================================

This is the Historical Spawn Dates component of my Dynamic History mod project.
It can be used for RFC (Rhye's and Fall of Civilization) like scenarios on any TSL (True Starting Location) map
Compatible with Civ5, Gods+Kings, Brave New World and all DLC Civilizations.
Ready to be used with my G+K or BNW City States mod for YnAEMP, and works great on the Giant Earth or Large Europe maps.

[b]Important note when using Brave New World[/b]
=======================================

Because of the new victory condition for Culture, it's important to select at least [b]two[/b] other Civilizations that will start before you, and close to each other (in spawning date, not distance). Else you (or the AI) may get a Culture Victory before any other Civilization can spawn. (This is now in the top priority list of things to get fixed in my mods)


[b]How does it work ?[/b]
=================

All Civilization and City States spawn on the map at the real date.

For some Civilization, that does not change anything, like Egypt that is present on the map from the start. But Germany, for example, will spawn at the turn corresponding to 1000AD in your game.

If you've selected a Civilisation starting after 4000 BC (the first turn), the game will auto-play until the date of spawn of your Civilization.
You can select a later starting era (using YnAEMP for example) in the game setup to reduce the waiting time, but I'll suggest to select one or two era before your civilization start, to let the other civs fill some part of the maps for a better experience.
You may want to set autosave ON, so you can reload your game if it has crashed during the autoplay without restarting from 4000 BC. Very usefull if you decide to play USA. ...

To balance with the late start, some mechanisms are implemented, the spawning civilization get the following:
 - A few units related to the current era
 - All nearby barbarian units
 - All very close units from City States, and the city itself can also be removed and converted to a Settler
 - Ally relation statut with close City States
 - All technologies that has been discovered by all Civilizations that have already settled a city (but no techs that are known only by a few civs)
 - Science and Culture points based on the average number of techs/policies from other civs. Same for gold, faith, golden age turns and it can also get some free Great People based on the average cost of all other civs buildings.

There is one file to edit if you want to change spawning date or add date to custom civs: HistoricalSpawnDates.sql You can also change the balance mechanisms by editing HSD_Functions.lua and HSD_Defines.lua.

Isolated civs don't get free techs, (that's new world's civs, polynesia, indonesia, but not USA), it can also be changed in HistoricalSpawnDates.sql

And of course I recommend to combine it with the Revolution Collection for full effect...