drop view if exists lojadevinhos.granted;
drop user if exists Somellier@"localhost";
create user Somellier@"localhost" identified by "123" with max_queries_per_hour 40
	password expire interval 30 day;
    
create view lojadevinhos.granted(idVinicola,nomeVinicola) as select idVinicola, nomeVinicola
	from lojadevinhos.vinicola;
    
    
grant select on lojadevinhos.vinho to Somellier@"localhost";
grant select on lojadevinhos.granted to Somellier@"localhost";


