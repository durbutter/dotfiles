;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(define-key osx-key-mode-map [home] 'beginning-of-line)
(define-key osx-key-mode-map [end] 'end-of-line)

; Aquamacs Emacs Starter Kit
;; http://github.com/walter/aquamacs-emacs-starter-kit
;; set the dotfiles-dir variable to this directory
;;(setq kitfiles-dir (concat (file-name-directory
; ;                   (or (buffer-file-name) load-file-name)) "/aquamacs-emacs-\
starter-kit"))

;; set up our various directories to load
;;(add-to-list 'load-path kitfiles-dir)
;;(require 'init)
