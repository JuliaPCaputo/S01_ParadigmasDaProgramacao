(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defvar *catalogo-itens*
  (list
    (make-item :nome "Espada" :tipo "Arma" :preco 100 :forca-magica 120)
    (make-item :nome "Arco" :tipo "Arma" :preco 80 :forca-magica 60)
    (make-item :nome "Pocao de Cura" :tipo "Pocao" :preco 30 :forca-magica 0)
    (make-item :nome "Amuleto Sombrio" :tipo "Artefato" :preco 200 :forca-magica 150)))

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(defun processa-venda (catalogo)
  (let* ((apenas-armas
           (remove-if-not (lambda (item)
                            (string= (item-tipo item) "Arma"))
                          catalogo))

         (armas-com-imposto
           (mapcar (lambda (arma)
                     (make-item
                       :nome (item-nome arma)
                       :tipo (item-tipo arma)
                       :preco (adiciona-imposto (item-preco arma))
                       :forca-magica (item-forca-magica arma)))
                   apenas-armas)))

    (mapcar (lambda (arma)
              (format nil "~a -> Forca magica final: ~a"
                      (item-nome arma)
                      (bonus-maldicao (item-forca-magica arma))))
            armas-com-imposto)))

(format t "~a~%" (processa-venda *catalogo-itens*))