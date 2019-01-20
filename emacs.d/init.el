;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/.ghq/src/github.com/nsf/gocode/emacs")

(exec-path-from-shell-initialize)

(setq custom-file (locate-user-emacs-file "custom.el"))

(init-loader-load "~/.emacs.d/conf")
