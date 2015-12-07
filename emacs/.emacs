					;General
;(menu-bar-mode -1)
(toggle-scroll-bar -1)
;(tool-bar-mode -1) 
(setq-default inhibit-startup-screen t)
(setq make-backup-files nil)
(setq-default column-number-mode t)
(global-linum-mode t)

(savehist-mode 1)

(require 'dired-x)

(setenv "http_proxy" "http://10.12.54.15:8080")
(set-face-attribute 'default nil :height 160)
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
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
;	     '("melpa" . "http://melpa.milkbox.net/packages/"))
	     '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

					;Autocomplete
(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's asynchronous function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)


(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
;(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
					;Flycheck

;(eval-after-load 'flycheck
;  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

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
(fset 'create-method
   [?\C-a ?\C-k ?\C-y ?\C-x ?o ?\C-a ?\M-> return ?\C-y tab ?\C-a ?\M-f ?\C-f ?\C-x ?o ?\C-r ?c ?l ?a ?s ?s ?\M-f ?\C-f ?\C-  ?\M-f ?\M-w ?\C-x ?o ?\C-y ?: ?: ?\C-s ?\; ?\C-? ?\; ?\C-m backspace return ?\{ return ?\}])

(fset 'create-wrap-section
   [?# ?i ?f ?d ?e ?f ?  ?H ?I ?G ?H ?W ?A ?Y return ?# ?e ?l ?s ?e return ?# ?e ?n ?d ?i ?f return])

;(global-set-key (kbd "\C-cm") 'create-method)
;(global-set-key (kbd "\C-cc") 'create-wrap-section)


					;Typing
;(require 'ergoemacs-mode)
;(setq ergoemacs-theme nil) 
;(setq ergoemacs-keyboard-layout "programmer-dv") 
;(ergoemacs-mode 1)

(require 'iedit)
					;Language independent
(electric-indent-mode 1)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
					;c/c++
(require 'google-c-style)


(defun cc-hook ()
  (google-set-c-style)
  (setq c-default-style "google")
  (setq c-basic-offset 4)
  (c-set-offset 'label 0)
  (ggtags-mode)
  )
(add-hook 'c-mode-hook 'cc-hook)
(add-hook 'c++-mode-hook 'cc-hook)

(global-set-key (kbd "C-<tab>") 'dabbrev-completion)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-completion)

					;Automatic

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (base16-marrakesh-light)))
 '(custom-safe-themes (quote ("bbd51dc8bc53d40beadc267c490ffed3d62a4e10293512cc634ee97f77c1fc82" "61724add6ddc09a0426f6b39109a76dd83174cf36d76563d3a35c7e07c0753c6" default)))
 '(custom-theme-load-path (quote (custom-theme-directory t ".config/base16-emacs/")))
 '(delete-selection-mode t)
 '(org-replace-disputed-keys nil)
 '(recentf-mode t)
 '(shift-select-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


