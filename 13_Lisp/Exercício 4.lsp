(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

(defun soma-medo-recursiva (lista)
  (if (null lista)
      0
      (+ (ocorrencia-nivel-medo (car lista))
         (soma-medo-recursiva (cdr lista)))))

(defun analise-final (lista-ocorrencias)
  (let* ((soma (soma-medo-recursiva lista-ocorrencias))
         (qtd (length lista-ocorrencias))
         (media (/ soma qtd)))

    (mapcar #'ocorrencia-nome
            (remove-if-not
             (lambda (oc)
               (and (> (ocorrencia-agentes-enviados oc) 3)
                    (> (ocorrencia-nivel-medo oc) media)))
             lista-ocorrencias))))

(defvar *lista*
  (list
    (make-ocorrencia :nome "Caso A" :ritual "Invocacao" :nivel-medo 50 :agentes-enviados 2)
    (make-ocorrencia :nome "Caso B" :ritual "Maldicao" :nivel-medo 90 :agentes-enviados 5)
    (make-ocorrencia :nome "Caso C" :ritual "Manifestacao" :nivel-medo 30 :agentes-enviados 4)
    (make-ocorrencia :nome "Caso D" :ritual "Maldicao" :nivel-medo 120 :agentes-enviados 6)))

(format t "~%Ocorrencias: (Caso A, Caso B, Caso C, Caso D)~%")
(format t "Ocorrencias criticas: ~a~%" (analise-final *lista*))
