/*

	Historical Spawn Dates
	by Gedemon (2013)

*/


-------------------------------------------------------------------------------
-- Create the Historical Spawn Dates table...
-------------------------------------------------------------------------------

DROP TABLE IF EXISTS Civilization_HistoricalSpawnDates;

CREATE TABLE IF NOT EXISTS Civilization_HistoricalSpawnDates
	 (	ID INTEGER PRIMARY KEY AUTOINCREMENT,
		Type TEXT NOT NULL UNIQUE,
		StartYear INTEGER DEFAULT -10000,
		UnitType1 TEXT DEFAULT NULL,
		UnitType2 TEXT DEFAULT NULL,
		UnitType3 TEXT DEFAULT NULL,
		UnitType4 TEXT DEFAULT NULL,
		UnitType5 TEXT DEFAULT NULL,
		UnitType6 TEXT DEFAULT NULL,
		NoFreeTech BOOLEAN DEFAULT 0);


-------------------------------------------------------------------------------
-- Fill tables with Historical Spawn Dates
-------------------------------------------------------------------------------

INSERT OR REPLACE INTO Civilization_HistoricalSpawnDates
		(	Type,				StartYear,	NoFreeTech,	UnitType1,				UnitType2,				UnitType3,				UnitType4,				UnitType5,				UnitType6	)

-- Major Civilizations
SELECT	'CIVILIZATION_AMERICA',		 1775,	0,			'UNIT_MUSKETMAN',		'UNIT_MUSKETMAN',		'UNIT_SETTLER',			'UNIT_SETTLER',			'UNIT_WORKER',			'UNIT_AMERICAN_MINUTEMAN'	UNION ALL
SELECT	'CIVILIZATION_ARABIA',		  620,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_AZTEC',		  700,	1,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_CHINA',		-2000,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_WORKER',			NULL						UNION ALL
SELECT	'CIVILIZATION_ENGLAND',		  927,	0,			'UNIT_WARRIOR',			'UNIT_COMPOSITE_BOWMAN','UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_FRANCE',		  481,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_GERMANY',		 1000,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_GREECE',		-2700,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			NULL,					NULL						UNION ALL
SELECT	'CIVILIZATION_INDIA',		-2500,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_WARRIOR',			'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'CIVILIZATION_IROQUOIS',	 1000,	1,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_SETTLER'				UNION ALL
SELECT	'CIVILIZATION_JAPAN',		 -500,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			NULL						UNION ALL
SELECT	'CIVILIZATION_OTTOMAN',		 1200,	0,			'UNIT_PIKEMAN',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_SETTLER'				UNION ALL
SELECT	'CIVILIZATION_PERSIA',		-3200,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_WARRIOR',			NULL,					NULL,					NULL						UNION ALL
SELECT	'CIVILIZATION_ROME',		 -900,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			NULL						UNION ALL
SELECT	'CIVILIZATION_RUSSIA',		  800,	0,			'UNIT_WARRIOR',			'UNIT_COMPOSITE_BOWMAN','UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_SIAM',		  700,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_SONGHAI',		 1200,	0,			'UNIT_PIKEMAN',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_SETTLER'				UNION ALL
SELECT	'CIVILIZATION_MONGOL',		 -300,	0,			'UNIT_HORSEMAN',		'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			NULL						UNION ALL
SELECT	'CIVILIZATION_INCA',		 1100,	1,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_SPAIN',		  722,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_POLYNESIA',	  500,	1,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_KOREA',		  918,	0,			'UNIT_WARRIOR',			'UNIT_COMPOSITE_BOWMAN','UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_DENMARK',		  450,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_AUSTRIA',		 1156,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_BYZANTIUM',	  330,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_CARTHAGE',	 -814,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			NULL						UNION ALL
SELECT	'CIVILIZATION_CELTS',		 -100,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			NULL						UNION ALL
SELECT	'CIVILIZATION_ETHIOPIA',	 1137,	0,			'UNIT_PIKEMAN',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_HUNS',		   91,	0,			'UNIT_HORSEMAN',		'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_HORSEMAN',		'UNIT_HUN_HORSE_ARCHER'		UNION ALL
SELECT	'CIVILIZATION_MAYA',		-1800,	1,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_WORKER',			NULL						UNION ALL
SELECT	'CIVILIZATION_NETHERLANDS',	 1581,	0,			'UNIT_MUSKETMAN',		'UNIT_MUSKETMAN',		'UNIT_SETTLER',			'UNIT_SETTLER',			'UNIT_WORKER',			NULL						UNION ALL
SELECT	'CIVILIZATION_SWEDEN',		  800,	0,			'UNIT_PIKEMAN',			'UNIT_COMPOSITE_BOWMAN','UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_SETTLER'				UNION ALL
SELECT	'CIVILIZATION_BRAZIL',		 1822,	0,			'UNIT_RIFLEMAN',		'UNIT_RIFLEMAN',		'UNIT_SETTLER',			'UNIT_SETTLER',			'UNIT_WORKER',			'UNIT_RIFLEMAN'				UNION ALL
SELECT	'CIVILIZATION_VENICE',		  421,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_COMPOSITE_BOWMAN','UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_MOROCCO',		  789,	0,			'UNIT_WARRIOR',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_PORTUGAL',	  868,	0,			'UNIT_WARRIOR',			'UNIT_COMPOSITE_BOWMAN','UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_POLAND',		  966,	0,			'UNIT_WARRIOR',			'UNIT_COMPOSITE_BOWMAN','UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_WORKER'				UNION ALL
SELECT	'CIVILIZATION_INDONESIA',	 1200,	1,			'UNIT_PIKEMAN',			'UNIT_SCOUT',			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_SETTLER'				UNION ALL
SELECT	'CIVILIZATION_SHOSHONE',	 1500,	1,			'UNIT_COMPOSITE_BOWMAN','UNIT_COMPOSITE_BOWMAN','UNIT_SETTLER',			'UNIT_SETTLER',			'UNIT_WORKER',			'UNIT_COMPOSITE_BOWMAN'		UNION ALL
SELECT	'CIVILIZATION_ZULU',		 1600,	1,			'UNIT_ZULU_IMPI',		'UNIT_ZULU_IMPI',		'UNIT_ZULU_IMPI',		'UNIT_WORKER',			'UNIT_SETTLER',			'UNIT_SETTLER'				UNION ALL

-- City-States:		Type,		StartYear,				UnitType1,				UnitType2,				UnitType3,				UnitType4,				UnitType5,				UnitType6
SELECT	'MINOR_CIV_WARSAW',			1200,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_BUDAPEST',		0	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_GENEVA',			-121,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_VENICE',			421	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_GENOA',			-600,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_FLORENCE',		-59	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_RAGUSA',			614	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_SYDNEY',			1788,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_QUEBEC_CITY',	1608,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_BUCHAREST',		1459,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_BELGRADE',		-279,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_BRUSSELS',		580	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_MONACO',			-500,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_KATHMANDU',		-167,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_HANOI',			-200,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_LHASA',			637	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_ALMATY',			-900,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_KUALA_LUMPUR',	1857,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_SINGAPORE',		200	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_RIO_DE_JANEIRO',	1565,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CAPE_TOWN',			1652,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_SIDON',				-4000,	0,			'UNIT_WARRIOR',			'UNIT_WARRIOR',			NULL,					NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_TYRE',				-2750,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_ANTWERP',		300	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_CAHOKIA',		1000,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_COLOMBO',		800	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_HONG_KONG',		-200,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_JAKARTA',		400	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_JERUSALEM',		-4000,	0,			'UNIT_WARRIOR',			'UNIT_WARRIOR',			NULL,					NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_LA_VENTA',		-1200,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_LISBON',			-1200,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_MANILA',			900	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_MARRAKECH',		1062,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_MILAN',			-400,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_MOMBASA',		900	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_PRAGUE',			860	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_VALLETTA',		1566,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_VATICAN_CITY',	1929,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			NULL						UNION ALL
SELECT	'MINOR_CIV_WITTENBERG',		1180,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_YEREVAN',		-4000,	0,			'UNIT_WARRIOR',			'UNIT_WARRIOR',			NULL,					NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_ZANZIBAR',		1000,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_ZURICH',			100	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_SAMARKAND',		-700,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_CHEYENNE',		1500,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_SIOUX',			1400,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_IFE',			-400,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_ULUNDI',			1700,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_MOGADISHU',		-100,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_KINSHASA',		1500,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_HARAPPA',		-4000,	0,			'UNIT_WARRIOR',			'UNIT_WARRIOR',			NULL,					NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_DAKAR',			1400,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_REYKJAVIK',		870	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_KIEV',			500	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_RIGA',			200	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_GARAMANTES',		-500,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_ORMUS',			900	,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		'UNIT_COMPOSITE_BOWMAN',NULL						UNION ALL
SELECT	'MINOR_CIV_MELBOURNE',		1803,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_MUSKETMAN',		'UNIT_MUSKETMAN',		'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_UR',				-3800,	0,			'UNIT_WARRIOR',			'UNIT_WARRIOR',			NULL,					NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_SOFIA',			-400,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_KABUL',			-600,	0,			'UNIT_SPEARMAN',		'UNIT_WORKER',			'UNIT_SPEARMAN',		'UNIT_SPEARMAN',		NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_MBANZA_KONGO',	1400,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_BUENOS_AIRES',	1536,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_KYZYL',			1914,	0,			'UNIT_RIFLEMAN',		'UNIT_RIFLEMAN',		'UNIT_RIFLEMAN',		'UNIT_WORKER',			'UNIT_WORKER',			'UNIT_RIFLEMAN'				UNION ALL
SELECT	'MINOR_CIV_BYBLOS',			-4000,	0,			'UNIT_WARRIOR',			'UNIT_WARRIOR',			NULL,					NULL,					NULL,					NULL						UNION ALL
SELECT	'MINOR_CIV_MALACCA',		1400,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_ANTANANARIVO',	1625,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_PIKEMAN',			'UNIT_CROSSBOWMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_VANCOUVER',		1862,	0,			'UNIT_MUSKETMAN',		'UNIT_WORKER',			'UNIT_MUSKETMAN',		'UNIT_MUSKETMAN',		'UNIT_MUSKETMAN',		NULL						UNION ALL
SELECT	'MINOR_CIV_PANAMA_CITY',	1519,	0,			'UNIT_PIKEMAN',			'UNIT_WORKER',			'UNIT_PIKEMAN',			'UNIT_MUSKETMAN',		'UNIT_CROSSBOWMAN',		NULL						UNION ALL

-- This line just so I don't have to care of the "UNION ALL" or ";" at the end of the list when adding new civilizations or City States...
SELECT	'_END_OF_INSERT_',			-10000,	0,			NULL,					NULL,					NULL,					NULL,					NULL,					NULL;

DELETE FROM Civilization_HistoricalSpawnDates WHERE Type = '_END_OF_INSERT_';