;;; ELPA repos
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;; install required packages
(setq package-list '(magit coffee-mode)) ; TODO: projmake

;;;(package-initialize)
;;;(unless package-archive-contents
;;;  (package-refresh-contents))

;;;(dolist (package package-list)
;;;  (unless (package-installed-p package)
;;;    (package-install package)))

;;; reopen buffers
;(desktop-save-mode 1)

;;; smooth scrolling
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; one line at a time
(setq mouse-wheel-progressive-speed nil) ; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't)

;;; set backup file location
(setq backup-directory-alist '(("." . "~/.emacs_backups")))

;;; erlang
;;;(setq load-path (cons "/usr/local/otp/lib/tools/emacs" load-path))
;;;(setq erlang-root-dir "/usr/local/otp")
;;;(setq exec-path (cons "/usr/local/otp/bin" exec-path))
;;;(require 'erlang-start)
;;;(add-hook 'erlang-mode-hook '(lambda() (setq indent-tabs-mode nil)))

;;; line #s
(global-linum-mode t)

;;; projmake
;;;(add-to-list 'load-path (file-truename "~/projmake-mode/src"))
;;;(require 'projmake-mode)
;;;(add-hook 'erlang-mode-hook '(lambda() (projmake-mode) (projmake-search-load-project)))

;; theme
(when (featurep 'aquamacs)
  (color-theme-initialize)
  (color-theme-clarity)
;;;  (load-theme 'matrix-theme t t)
;;;  (enable-theme 'matrix-theme)
  (aquamacs-autoface-mode 0))

;;; magit
(global-set-key (kbd "C-x g") 'magit-status)
