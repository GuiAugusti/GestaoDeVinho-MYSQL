select nomeVinho,anoVinho,nomeVinicola,nomeRegiao
	from 
		LojaDeVinhos.Vinho vl
		inner join LojaDeVinhos.Vinicola v on vl.Vinicola_idVinicola = v.idVinicola
		inner join LojaDeVinhos.Regiao r on v.Regiao_idRegiao = r.idRegiao;
        
        
create view LojaDeVinhos.infos(nomeVinho,anoVinho,nomeVinicola,nomeRegiao)
as select 
	nomeVinho, anoVinho, nomeVinicola, nomeRegiao
from 
	LojaDeVinhos.Vinho vl
	inner join LojaDeVinhos.Vinicola v on vl.Vinicola_idVinicola = v.idVinicola
	inner join LojaDeVinhos.Regiao r on v.Regiao_idRegiao = r.idRegiao;