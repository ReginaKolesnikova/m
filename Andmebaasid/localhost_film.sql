create table film(
filmID int Primary key auto_increment,
filmNimetus varchar(30) not null,
aasta int,
eelarveHind decimal(7,1)
);

INSERT INTO film(filmNimetus, aasta, eelarveHind)
Values('Titanic', 2024, 55555.5)

Create table zanr(
zanrID int primary key AUTO_INCREMENT,
zanrNimetus varchar(20) unique
);

Insert into zanr(zanrNimetus)
values ('draama'), ('detektiiv');
select * from zanr;

alter table film add zanrID int

alter table film add constraint fk_zanr
foreign key (zanrID) references zanr(zanrID);
