drop table if exists foodfest.event;
create table foodfest.event (
      ID NUMERIC(20,0) not null,
      NAME varchar(255) null,
      DESCRIPTION varchar(4000) null,
      PROFILE_URL varchar(255) null,
      COVER_URL varchar(255) null,
      LOCATION varchar(255) null,
      START_TIME TIMESTAMP null,
      END_TIME TIMESTAMP null,
      VENUE_ID NUMERIC(20,0) null
);
drop table if exists foodfest.tweet;
create table foodfest.tweet (
      ID NUMERIC(20,0) not null,
      NAME varchar(255) null,
      SCREEN_NAME varchar(255) null,
      TEXT BLOB null,
      PROFILE_PIC varchar(255) null,
      CREATED_DATE TIMESTAMP not null
);
drop table if exists foodfest.last_refresh;
create table foodfest.last_refresh (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TABLE_NAME varchar(255) not null,
  LAST_REFRESH TIMESTAMP not null
);
drop table if exists foodfest.venue;
create table foodfest.venue (
	ID NUMERIC(20,0) NOT NULL PRIMARY KEY,
	STREET varchar(255),
	CITY varchar(255),
	POSTCODE varchar(10),
	LATITUDE DOUBLE,
	LONGITUDE DOUBLE
);
drop table if exists foodfest.trader_feed;
create table foodfest.trader_feed (
	ID NUMERIC(20,0) NOT NULL PRIMARY KEY
);
drop table if exists foodfest.trader;
create table foodfest.trader (
	ID NUMERIC(20,0) NOT NULL PRIMARY KEY,
	NAME varchar(255) null,
  ABOUT varchar(4000) null,
  PROFILE_IMG varchar(255) null,
  COVER_IMG varchar(255) null,
	LINK varchar(255),
	WEBSITE varchar(255),
	PHONE varchar(255)
);
drop table if exists foodfest.voucher;
create table foodfest.voucher (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	POSITION INT,
	TITLE varchar(255),
	URL varchar(255)
);