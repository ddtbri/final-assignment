create database site;
use site;
create table if not exists goods(
	gid char(15) not null unique,
    name varchar(45) not null,
    description varchar(1500),
    type varchar(15),
    price int(11) not null,
    pic_route varchar(20),
    pic_route2 varchar(20),
    included_date date,
    primary key(gid)
);
create table if not exists user(
	uid char(15) not null unique,
    username varchar(18) not null unique,
    password varchar(18) not null,
    included_date date,
    email_address varchar(30),
    primary key(uid)
);

create table if not exists gorder(
	oid char(15) not null unique,
    gid char(15) not null unique,
    uid char(15) not null unique,
    included_date date,
    primary key(oid),
    foreign key(gid) references goods(gid),
    foreign key(uid) references user(uid)
);
create table if not exists super_user(
	username varchar(18) not null unique,
    password varchar(18) not null
);
