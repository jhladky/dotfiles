(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "fixed" :foundry "misc" :slant normal :weight normal :height 113 :width normal)))))
;; to setup tabs
(setq-default tab-width 3)
(setq-default indent-tabs-mode nil)
(setq backup-directory-alist `(("." . "~/.saves")))
(delete-selection-mode 1)
(setq indent-line-function 'insert-tab)
(setq c-default-style "k&r"
      c-basic-offset 3)
(windmove-default-keybindings 'meta)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(menu-bar-mode -1)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
