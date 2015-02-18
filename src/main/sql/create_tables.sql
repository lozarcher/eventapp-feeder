drop table if exists foodfest.EVENT;
create table foodfest.EVENT (
      ID NUMERIC(20,0) not null,
      NAME varchar(255) null,
      DESCRIPTION varchar(4000) null,
      COVER_URL varchar(255) null,
      START_TIME TIMESTAMP null,
      END_TIME TIMESTAMP null
);
drop table if exists foodfest.TWEET;
create table foodfest.TWEET (
      ID NUMERIC(20,0) not null,
      NAME varchar(255) null,
      SCREEN_NAME varchar(255) null,
      TEXT BLOB null,
      CREATED_DATE TIMESTAMP not null
);
drop table if exists foodfest.LAST_REFRESH;
create table foodfest.LAST_REFRESH (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TABLE_NAME varchar(255) not null,
    LAST_REFRESH TIMESTAMP not null
);