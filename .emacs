
;;; ELPA repos
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;; smooth scrolling
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
(setq mouse-wheel-progressive-speed 1) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't)

;;; set backup file location
(setq backup-directory-alist '(("." . "~/.emacs_backups")))

;;; line #s
;;;(global-linum-mode t)

;; theme
(when (featurep 'aquamacs)
  (color-theme-initialize)
  (color-theme-clarity)
  (aquamacs-autoface-mode 0))

;;; Powerline theme
;;; cd ~/.emacs.d/vendor
;;; git clone git://github.com/jonathanchu/emacs-powerline.git
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)
(setq powerline-arrow-shape 'arrow)
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")


;;;(set-frame-parameter nil 'fullscreen 'fullboth)

;;; Python Autocomplete
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional
