create table filekeys(id serial not null primary key,
                      filekey char(32) not null unique,
                      filevalue char(64) not null unique,
                      filesize bigint not null);

