filho(cronos, urano).
filho(reia, urano).
filho(cronos, gaia).
filho(reia, gaia).

filho(hades, cronos).
filho(hades, reia).
filho(poseidon, cronos).
filho(poseidon, reia).
filho(zeus, cronos).
filho(zeus, reia).
filho(hera, cronos).
filho(hera, reia).

filho(ares, zeus).
filho(ares, hera).
filho(hefesto, zeus).
filho(hefesto, hera).

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

ancestral(A, D) :- filho(D, A).

ancestral(A, D) :- filho(Z, A), ancestral(Z, D).

% ancestral(urano, X).