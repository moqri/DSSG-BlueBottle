create schema mstepner;

DROP TABLE mstepner.building_violations_sample;
CREATE TABLE mstepner.building_violations_sample (
	mattgee_key INTEGER NOT NULL, 
	"ID" INTEGER NOT NULL, 
	"VIOLATION LAST MODIFIED DATE" DATE NOT NULL, 
	"VIOLATION DATE" DATE NOT NULL, 
	"VIOLATION CODE" VARCHAR(8) NOT NULL, 
	"VIOLATION STATUS" VARCHAR(8) NOT NULL, 
	"VIOLATION STATUS DATE" DATE, 
	"VIOLATION DESCRIPTION" VARCHAR(30), 
	"VIOLATION LOCATION" VARCHAR(229), 
	"VIOLATION INSPECTOR COMMENTS" VARCHAR(3790), 
	"VIOLATION ORDINANCE" VARCHAR(807), 
	"INSPECTOR ID" VARCHAR(9) NOT NULL, 
	"INSPECTION NUMBER" INTEGER NOT NULL, 
	"INSPECTION STATUS" VARCHAR(6) NOT NULL, 
	"INSPECTION WAIVED" BOOLEAN NOT NULL, 
	"INSPECTION CATEGORY" VARCHAR(12) NOT NULL, 
	"DEPARTMENT BUREAU" VARCHAR(26) NOT NULL, 
	"ADDRESS" VARCHAR(30) NOT NULL, 
	"PROPERTY GROUP" INTEGER NOT NULL, 
	"SSA" FLOAT, 
	"LATITUDE" FLOAT, 
	"LONGITUDE" FLOAT, 
	"LOCATION" VARCHAR(39)
);

SELECT COUNT(*) FROM mstepner.building_violations_sample LIMIT 10;

SELECT COUNT(*) FROM mstepner.building_violations_sample
WHERE 	"VIOLATION DATE">='2015-04-01' AND
		"VIOLATION DATE"<'2015-05-01'
;