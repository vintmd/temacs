;; init-vim.el
;; install 
;; the leader must before the evil
(require-package 'evil-leader)
;; get back of the tab function in org-mode, which replace by the evil jump
(setq evil-want-C-i-jump nil)
(require-package 'evil)
(require-package 'evil-surround)
(require-package 'evil-matchit)

;; config
(setq evil-leader/leader ",")

;; start up
(global-evil-leader-mode t)
(evil-mode t)
(global-evil-surround-mode t)
(global-evil-matchit-mode t)

;; use defalias to get the order
(defalias 'lisp/leader-set-key 'evil-leader/set-key)
(provide 'init-vim)
