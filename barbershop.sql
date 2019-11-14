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




