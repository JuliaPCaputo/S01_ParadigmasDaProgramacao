filho(hades, cronos).
filho(hades, reia).
filho(poseidon, cronos).
filho(poseidon, reia).
filho(zeus, cronos).
filho(zeus, reia).
filho(hera, cronos).
filho(hera, reia).

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

irmaos_germanos(A, B) :- filho(A, P) , filho(A, M) , filho(B, P) , filho(B, M) , A \= B.

% irmaos_germanos(zeus, X).