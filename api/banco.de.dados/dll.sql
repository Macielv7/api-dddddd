create database Dentista;
use Dentista;

create table TB_LOGIN (
id_login int primary key auto_increment,
nm_doutor varchar(50),
ds_gmail varchar (100),
ds_senha varchar(100)
);


create table TB_AGENDAMENTO (
ID_AGENDAMENTO  int primary key auto_increment,
ID_LOGIN 		int,
NM_PACIENTE 	varchar (100),
DS_EMAIL 		varchar (100),
DS_TELEFONE 	varchar(50),
HR_CONSULTA		time,
DT_CONSULTA		date,
foreign key (id_login) references tb_login (id_login)

);