filho(hades, cronos).
filho(hades, reia).
filho(poseidon, cronos).
filho(poseidon, reia).
filho(zeus, cronos).
filho(zeus, reia).

domina(zeus, ceu).
domina(zeus, raio).
domina(zeus, justica). 
domina(poseidon, mar).
domina(poseidon, terremotos).
domina(hades, submundo).
domina(atena, sabedoria).

habita(zeus, olimpo).
habita(poseidon, olimpo).
habita(atena, olimpo).
habita(hades, submundo).

deus_maior(X) :- domina(X, Y) , domina(X, Z) , Y \= Z, habita(X, olimpo).

% deus_maior(X).