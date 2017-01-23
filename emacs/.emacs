					;General
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1) 
(setq-default inhibit-startup-screen t)
(setq make-backup-files nil)
(setq-default column-number-mode t)
;(global-linum-mode t)

(savehist-mode 1)

(require 'dired-x)

<<<<<<< HEAD
(setenv "http_proxy" "http://10.12.54.15:8080")
(setenv "https_proxy" "https://10.12.54.15:8080")

(set-face-attribute 'default nil :height 160)
					;Org
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files '("~/org/"))

=======
(set-face-attribute 'default nil :height 120)
>>>>>>> f53f1ace4736b6df4356d1c64b8951c58998e202

					;Packages

(require 'package)
(add-to-list 'package-archives
;	     '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
;	     '("melpa" . "http://melpa.milkbox.net/packages/"))
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

					;Autocomplete

					;Auctex
;(setq TeX-view-program-selection
;      '((output-pdf "PDF Viewer")))
;(setq TeX-view-program-list
;      '(("PDF Viewer" "okular %o")))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-electric-escape t)
(setq-default TeX-master nil)
(setq TeX-electric-sub-and-superscript t)

					;Macros
;; (fset 'create-method
;;    [?\C-a ?\C-k ?\C-y ?\C-x ?o ?\C-a ?\M-> return ?\C-y tab ?\C-a ?\M-f ?\C-f ?\C-x ?o ?\C-r ?c ?l ?a ?s ?s ?\M-f ?\C-f ?\C-  ?\M-f ?\M-w ?\C-x ?o ?\C-y ?: ?: ?\C-s ?\; ?\C-? ?\; ?\C-m backspace return ?\{ return ?\}])

;; (fset 'create-wrap-section
;;    [?# ?i ?f ?d ?e ?f ?  ?H ?I ?G ?H ?W ?A ?Y return ?# ?e ?l ?s ?e return ?# ?e ?n ?d ?i ?f return])

;(global-set-key (kbd "\C-cm") 'create-method)
;(global-set-key (kbd "\C-cc") 'create-wrap-section)


(require 'iedit)
					;Language independent
(electric-indent-mode 1)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
<<<<<<< HEAD
 '(custom-enabled-themes nil)
 '(custom-safe-themes (quote ("3f546f127564de59f1c42dfd65d32bd7650fa5a614cd58c2df061da052ea3ec0" default)))
 '(custom-theme-load-path (quote ("/home/marelli/.config/base16-emacs/" custom-theme-directory t))))
=======
 '(browse-url-generic-program "google-chrome"))
>>>>>>> f53f1ace4736b6df4356d1c64b8951c58998e202
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
