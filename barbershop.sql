drop database if exists barber_shop;
create database barber_shop;
use barber_shop;

create table djelatnik(
    id_sifra int not null primary key auto_increment,
    ime varchar (10) not null
);

create table korisnik (
    id_sifra int not null primary key auto_increment,
    posjeta int not null,
    djelatnik int not null
);

create table posjeta (
    id_sifra int not null primary key auto_increment,
    djelatnik int not null,
    usluga int not null
);

create table usluga(
    id_sifra int not null primary key auto_increment,
    naziv_usluge varchar (10) not null,
    sisanje int,
    brijanje int
);

create table sisanje(
    id_sifra int not null primary key auto_increment,
    cijena decimal (4,2) not null
);

create table brijanje(
    id_sifra int not null primary key auto_increment,
    cijena decimal (4,2) not null
);

ALTER TABLE korisnik add FOREIGN KEY (posjeta) REFERENCES posjeta (id_sifra);
ALTER TABLE korisnik add FOREIGN KEY (djelatnik) REFERENCES djelatnik (id_sifra);

ALTER TABLE posjeta add FOREIGN KEY (usluga) REFERENCES usluga (id_sifra);
ALTER TABLE posjeta add FOREIGN KEY (djelatnik) REFERENCES djelatnik (id_sifra);

ALTER TABLE usluga add FOREIGN KEY (sisanje) REFERENCES sisanje (id_sifra);
ALTER TABLE usluga add FOREIGN KEY (brijanje) REFERENCES brijanje (id_sifra);


insert into sisanje (id_sifra,cijena)
value (null,80.00);

insert into brijanje (id_sifra,cijena)
value (null,50.00);

delete from brijanje where (id_sifra=2) ;
delete from brijanje where (id_sifra=3) ;

insert into djelatnica (id_sifra,ime)
values (null,'Tonino');

insert into usluga (id_sifra,naziv_usluge,sisanje,brijanje)
value (null,'VIPtretman',1,1);

insert into usluga (id_sifra,naziv_usluge,sisanje)
value (null,'Sisanje',1);

insert into usluga (id_sifra,naziv_usluge,brijanje)
value (null,'Brijanje',1);

insert into posjeta (id_sifra, djelatnica,usluga)
value (null,1,1);

insert into korisnik (id_sifra,posjeta,djelatnica)
values (null,1,1);



