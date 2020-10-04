create table filekeys(id serial not null primary key,
                      filekey char(32) not null unique,
                      filevalue char(64) not null unique,
                      filesize bigint not null);

create table drive (id serial not null primary key, 
                    vsn char(9) not null unique, 
                    drivename varchar(32) not null unique);

create table drivefile(id serial not null primary key, 
                       did bigint not null references drive(id),
                       fid bigint not null references filekeys(id), 
                       unique(did, fid));

