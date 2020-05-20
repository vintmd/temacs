;;; the first try of the own lisp defun
;; (require-package 'own)
;; (defun testtmd (param)
;;   (interactive "p")
;;   (message "testtmd:%d" (* 8 param)))

(defun testgo (param)
  (interactive "p")
  (message "testgo:%d" (* param 'line-number)))

(defun outside (number)
  (interactive "p")
  (* number 2))

(defun testinner (number)
  (interactive "p")
  (* number 3))

(defun testouter (number)
  (interactive "p")
  (* number 6))



(provide 'init-own)

