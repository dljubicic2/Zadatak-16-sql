-- zadatak 16
use master;
drop database if exists zadacasql;
go
create database zadacasql collate Croatian_CI_AS;
go
use zadacasql;

create table opg(
	id int not null primary key identity (1,1),
	naziv varchar(50) not null,
	mjesto varchar(50) not null
);
create table proizvod(
	id int not null primary key identity (1,1),
	sirovina int not null,
	naziv varchar(50) not null,
	cijena decimal(18,2)
);
create table sirovina(
	id int not null primary key identity (1,1),
	naziv varchar(50) null,
	cijena decimal(18,2) null
);
create table djelatnik(
	id int not null primary key identity (1,1),
	proizvod int not null,
	ime varchar(50) null,
	prezime varchar(50)
);

-- veze izme?u ?lanova
alter table proizvod add foreign key (sirovina) references sirovina (id);
alter table djelatnik add foreign key (proizvod) references proizvod (id);

insert into opg (naziv,mjesto)
values ('opg programiranje',null);

insert into proizvod(sirovina,naziv,cijena)
values (null,'metal',238.34);

insert proizvod(sirovina,naziv,cijena)
values (2,'sir',23.76);

insert djelatnik (proizvod,ime,prezime)
values (2,null,null);