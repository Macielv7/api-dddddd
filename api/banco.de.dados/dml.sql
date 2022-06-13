USE Hunters;

-- carga inicial usuário adm
insert into tb_login (ds_gmail, ds_senha)
	values ('dentalclinic@gmail.com','DoutorFernando');
    

-- CSU01:: efetuar login
select id_login 		id,
		nm_doutor 		  nome,
		ds_gmail			 gmail,
       ds_senha			senha
  from tb_login
 where ds_gmail 		= 'dentalclinic@gmail.com'
   and ds_senha		= '1234';
    
    -- CSU02:: cadastrar novo agendamento
insert into tb_agendamento (id_login, nm_paciente, ds_email, ds_telefone, hr_consulta, dt_consulta)
values (1, 'fernando', 'dentalclinic@gmail.com', '(11) 96590-9931', '12:10:00', '2022-09-10');

	-- CSU03:: consultas marcadas 
SELECT id_login			'id',
	   id_agendamento   'agendamento',
	   nm_paciente		'nome',
       ds_email		    'email',
       ds_telefone	    'telefone',
       hr_consulta	    'horário',
       dt_consulta     	'data'
  FROM tb_agendamento;
 
	-- CSU05:: remover agendamento
DELETE FROM tb_agendamento 
 WHERE id_agendamento = 1;
      
		
	-- CSU06:: consultar consulta por nome
	
SELECT id_login			'id',
	   id_agendamento   'agendamento',
	   nm_paciente		'nome',
       ds_email		    'email',
       ds_telefone	    'telefone',
       hr_consulta	    'horário',
       dt_consulta     	'data'
  FROM tb_agendamento
  WHERE nm_paciente			like '%a%';