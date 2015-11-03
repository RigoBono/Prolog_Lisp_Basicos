;Area del cono
(defun AreaCono(Radio Gen) (* pi Radio (+ Gen Radio)))

;Volumen del cono
(defun VolumenCono(Radio Altura)(/ (* pi Radio Radio Altura) 3))

;Area piramide cuadrada
(defun AreaPiramideCuadrada(TamL Altura) (+ (* TamL TamL) (/ (* (* TamL 4) (sqrt(+ (* Altura Altura) (* (/ TamL 2) (/ TamL 2))))) 2)))

;Area piramide hexagonal
(defun AreaPiramideHex(TamL Altura)(+ (/ (* (* TamL 6) (sqrt(- (* TamL TamL) (* (/ TamL 2) (/ TamL 2))))) 2) (/ (* (* TamL 6) (sqrt(- (* Altura Altura) (* (/ TamL 2) (/ TamL 2))))) 2)))

;Volumen piramide hexagonal
(defun VolumenPiramideHex(TamL Altura) (/ (* (/ (* (* TamL 6) (sqrt(- (* TamL TamL) (* (/ TamL 2) (/ TamL 2))))) 2) Altura) 3))


;Volumen piramide cuadrangular
(defun VolumenPiramideCua(TamL Altura)(/ (* (* TamL TamL) Altura) 3))

;Area tronco de cono
(defun AreaTroncoCono(H RMa RMe) (* pi (+ (* (sqrt(+ (* H H) (* (- RMa RMe) (- RMa RMe) ))) (+ RMa RMe)) (* RMa RMa) (* RMe RMe) )))

;Volumen tronco de cono
(defun VolumenTroncoCono(H RMa RMe)(/ (* pi H (+ (* RMa RMa) (* RMe RMe) (* RMa RMe))) 3))

;Area tronco piramide cuadrangular
(defun AreaTroncoCua(Ap Lma Lme) (+ (* Lma Lma) (* Lme Lme) (* (/ (+ (* Lma 4) (* Lme 4) ) 2) Ap)))

;Volumen tronco piramide cuadrangular
(defun VolumenTroncoCua(Altura Lma Lme) (/ (* Altura (+ (* Lma Lma) (* Lme Lme) (sqrt(* (* Lma Lma) (* Lme Lme ))))) 3))
