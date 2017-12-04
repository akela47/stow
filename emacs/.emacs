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

(setenv "http_proxy" "http://10.12.54.15:8080")
(setenv "https_proxy" "https://10.12.54.15:8080")

;(set-face-attribute 'default nil :height 160)
					;Org
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files '("~/org/"))

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
