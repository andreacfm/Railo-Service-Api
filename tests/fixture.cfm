<cffunction name="setUpData" access="private">
    <cfset dsn = 'railoserviceapi'>

    <cfquery name="q" datasource="#dsn#">
    drop table if exists team;

    CREATE TABLE team  (
        id       	int(11) AUTO_INCREMENT NOT NULL,
        firstname	varchar(255) NULL,
        lastname 	varchar(255) NULL,
        full_name   varchar(255) NULL,
        dom      	varchar(10) NULL,
        test1       int(11) NULL,
        PRIMARY KEY(id)
    )
    ENGINE = MyISAM
    AUTO_INCREMENT = 1;

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('gert', 'frantz', 'com');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('micheal', 'offner', 'com');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('sean', 'corfield', 'com');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('peter', 'bell', 'com');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('mark', 'drew', 'com');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('todd', 'rafferty', 'org');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('jordan', 'micheals', 'org');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('aj', 'mercier', 'org');

    INSERT INTO `service_api`.`team`(`firstname`, `lastname`, `dom`)
    VALUES('andrea', 'campolonghi', 'org');
    </cfquery>
</cffunction>

<cffunction name="tearDownData" access="private">
    <cfquery name="q" datasource="#dsn#">
    drop table if exists team;
    </cfquery>
</cffunction>