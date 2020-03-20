;; message
(require 'ob-C)
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-message t)
(setq inhibit-default-init t)
(setq inhibit-startup-echo-area-message t)

;; indent
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(fset 'yes-or-no-p 'y-or-n-p)

;; bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(show-paren-mode 1)
(blink-cursor-mode 0)

;; org to enable the c and cpp compiler
;; (org-babel-do-load-languages
;;  'org-babel-load-languages '((C . t)))
(setq show-paren-delay 0)

;; backup file
(setq backup-directory-alist (quote (("." . "~/.backups"))))

;; solve the esc problem
;; when use the emamux the esc can not work very well
;; it does not work, but with the "set -s escape-time 0" in .tmux.conf
(setq evil-intercept-esc 'always)
;; highlight for the org mode
(setq org-src-fontify-natively t)

;; solve the color when use moe-theme in tmux



;; hs hide/show block hook the mode

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'ess-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
(add-hook 'python-mode-hook         'hs-minor-mode)
(add-hook 'go-mode-hook   'hs-minor-mode)



(provide 'init-normal)
