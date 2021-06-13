;; Init File By Krishna Jani for EMACS
;;---------------------------------
;; _____                          
;;| ____|_ __ ___   __ _  ___ ___ 
;;|  _| | '_ ` _ \ / _` |/ __/ __|
;;| |___| | | | | | (_| | (__\__ \
;;|_____|_| |_| |_|\__,_|\___|___/                              
;;---------------------------------
;; Does not include VIM bindings

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)


;; Package Initialization
(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/")
 t)
(package-initialize)

;; Doom Themes for visual config
(require 'doom-themes)
(load-theme 'doom-1337 t)

;; Powerline

(require 'powerline)
(powerline-center-theme)

;; Configuration for Dashboard
(require 'all-the-icons)
(require 'page-break-lines)
(require 'projectile)
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-startup-banner "~/.emacs.d/avatar.png")
(setq dashboard-banner-logo-title "Welcome to Emacs Krishna !!")
(setq dashboard-items '((recents  . 5)))
(setq dashboard-set-footer nil)                        
;; Smartparens

(require 'smartparens-config)
(smartparens-global-mode t)

;; Which Key Package

(require 'which-key)
(setq which-key-mode t)

;; Org Pretty bullets

(require 'org-bullets)

;; Activate org-bullets when orgmode enabled

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; This is some source code I found on RD that allows line break in ORGMODE
(add-hook 'org-mode-hook #'(lambda ()

                             ;; make the lines in the buffer wrap around the edges of the screen.
                             
                             ;; to press C-c q  or fill-paragraph ever again!
                             (visual-line-mode)
                             (org-indent-mode)))


;; Custom Stuff (DO NOT EDIT)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0466adb5554ea3055d0353d363832446cd8be7b799c39839f387abb631ea0995" default))
 '(package-selected-packages
   '(which-key smartparens dashboard projectile page-break-lines all-the-icons powerline doom-themes ##)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
