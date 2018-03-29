create trigger  tg_inserthistcli();

create or replace function insert_paciente(cedpacnt int, nmbpacnt text, aplldpacnt text, drcnpacnt text, sexpacnt text, 
                                fchnctpacnt date, tlfpacnt1 int, tlfpacnt2 int, tpsngre text, idparroquia int, idnacionalidad int) returns void as $$
begin
	INSERT INTO public.paciente(idpaciente, cedpacnt, nmbpacnt, aplldpacnt, drcnpacnt, sexpacnt, 
                                fchnctpacnt, tlfpacnt1, tlfpacnt2, tpsngre, idparroquia, idnacionalidad)
	VALUES (default,cedpacnt, nmbpacnt, aplldpacnt, drcnpacnt, sexpacnt, 
                                fchnctpacnt, tlfpacnt1, tlfpacnt2, tpsngre, idparroquia, idnacionalidad);

end;
$$ language plpgsql;

select * from paciente

create trigger tg_inserthistcli after insert on paciente
for each row execute procedure tg_inserthistcli()

select insert_paciente(1725519902,'francisco','javier','Chilibulo','Masculino','1992.10.31',2610096,0969013214,'O+',1,1)

select * from historiaclinica


