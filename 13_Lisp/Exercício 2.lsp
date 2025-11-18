(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(defvar *catalogo-criaturas*
  (list
    (make-criatura :nome "Safe Shallows" :ambiente "Safe Shallows" :periculosidade "Baixa" :vida-media 15)
    (make-criatura :nome "Reaper Leviathan" :ambiente "Open ocean" :periculosidade "Alta" :vida-media 50)
    (make-criatura :nome "Criatura 1" :ambiente "Deep" :periculosidade "Baixa" :vida-media 25)
    (make-criatura :nome "Criatura 2" :ambiente "Deep" :periculosidade "Alta" :vida-media 40)))
    
(defun filtra-por-perigo (catalogo)
  (remove-if (lambda (criatura)
    (string= (criatura-periculosidade criatura) "Baixa"))
      catalogo))
  
(defun relatorio-profundidade (catalogo)
  (mapcar
    (lambda (criatura)
      (format nil "~a: Vive em ~a" (criatura-nome criatura) (criatura-ambiente criatura)))
    (remove-if-not 
      (lambda (c) (string= (criatura-ambiente c) "Deep"))
      catalogo)))
      
(format t "Criaturas de periculosidade Alta: ~a~%" 
        (filtra-por-perigo *catalogo-criaturas*))

(format t "Criatuas de Deep: ~a~%" 
        (relatorio-profundidade *catalogo-criaturas*))
