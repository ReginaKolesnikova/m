CREATE DATABASE AndmebaasKolesnikova;

USE AndmebaasKolesnikova;
create table film(
filmID int Primary key identity(1,1),
filmNimetus varchar(30) not null,
aasta int,
eelarveHind decimal(7,1)
);
Select * from film;

--tabeli kustutamine
DROP TABLE film;

--andmete sisestamine tabelisse
INSERT INTO film(filmNimetus, aasta, eelarveHind)
Values(' ', 2024, 55555.5)

Delete from film where filmID=6;

Create table zanr(
zanrID int primary key identity(1,1),
zanrNimetus varchar(20) unique
)

Insert into zanr(zanrNimetus)
values ('draama'), ('detektiiv');
select * from zanr;

--tabeli film struktuuri muutmine--> uue veergu lisamine
alter table film add zanrID int
select * from film;
--tabeli film struktuuri muutmine--> FK lisamine mis on seotud tabeliga zanr(zanrID)
alter table film add constraint fk_zanr
foreign key (zanrID) references zanr(zanrID);

select * from film;
select * from zanr;
update film set zanrID=2 where filmID=3
