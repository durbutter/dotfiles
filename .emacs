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

;;; Keybindings
(global-set-key (kbd "C-?") 'transparency-set-value)
(global-set-key (kbd "C->") 'transparency-increase)
(global-set-key (kbd "C-<") 'transparency-decrease)

(defun transparency-set-initial-value ()
  "Set initial value of alpha parameter for the current frame"
  (interactive)
  (if (equal (frame-parameter nil 'alpha) nil)
      (set-frame-parameter nil 'alpha 100)))
 
(defun transparency-set-value (numb)
  "Set level of transparency for the current frame"
  (interactive "nEnter transparency level in range 0-100: ")
  (if (> numb 100)
      (message "Error! The maximum value for transparency is 100!")
    (if (< numb 0)
        (message "Error! The minimum value for transparency is 0!")
      (set-frame-parameter nil 'alpha numb))))
 
(defun transparency-increase ()
  "Increase level of transparency for the current frame"
  (interactive)
  (transparency-set-initial-value)
   (if (> (frame-parameter nil 'alpha) 0)
       (set-frame-parameter nil 'alpha (+ (frame-parameter nil 'alpha) -2))
     (message "This is a minimum value of transparency!")))
 
(defun transparency-decrease ()
  "Decrease level of transparency for the current frame"
  (interactive)
  (transparency-set-initial-value)
  (if (< (frame-parameter nil 'alpha) 100)
      (set-frame-parameter nil 'alpha (+ (frame-parameter nil 'alpha) +2))
    (message "This is a minimum value of transparency!")))

(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/slime")
(require 'slime-autoloads)
(setq slime-lisp-implementations
     `((sbcl ("/opt/local/bin/sbcl"))
       (abcl ("/opt/local/bin/abcl"))
       (clisp ("/opt/local/bin/clisp"))))
(slime-setup  '(slime-repl slime-asdf slime-fancy slime-banner))


(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'browser-refresh)
