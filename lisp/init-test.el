(require 'init-own)

(testinner 2)
(testouter 2)

(let ((t1 1) t2 t3 (t4 'some))
  (message "here are %d with %s, %s, and %s"
           t1 t2 t3 t4))

(if (> 4 5)
    (message "4 false")
  (message "5 true"))

(setq animals '(t m d))
(defun print-test (list)
  (while list
    (print (car list))
    (setq list (cdr list))))
(print-test animals)
  
(setq counting 1)
(defun print-test-1 (counting)
  (while (< counting 5)
    (print counting)
    (setq counting (+ counting 1))))

(print-test-1 1)


(setq countmd 2)
(defun print-test-2 ()
    (message "%s" countmd))
(print-test-2)

(defun print-test-3 (number-of-row)
  (let ((total 0) (row-number 1))
    (while (<= row-number number-of-row)
      (setq total (+ total row-number))
      (setq row-number (1+ row-number)))
    total))
(print-test-3 5)



(setq-default major-mode 'text-mode)           

(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'turn-off-auto-fill)
;;; how to use the regex 

(lambda (arg) (/ arg 50))
(message ((lambda (arg) (* arg 5)) 5))

(provide 'init-test)
