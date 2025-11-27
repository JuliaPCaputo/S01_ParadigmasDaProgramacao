filho(hades, cronos).
filho(hades, reia).
filho(poseidon, cronos).
filho(poseidon, reia).
filho(zeus, cronos).
filho(zeus, reia).

domina(hades, submundo).
domina(poseidon, mar).
domina(zeus, ceu).

divindade_olimpica(X) :- filho(X, cronos), (domina(X, ceu) ; domina(X, mar) ; domina(X, submundo)).

% divindade_olimpica(X).