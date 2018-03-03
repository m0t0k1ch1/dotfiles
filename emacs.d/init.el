;; cask
(require 'cask)
(cask-initialize)

;; load-path
(add-to-list 'load-path "~/.ghq/src/github.com/nsf/gocode/emacs")

;; exec-path
(exec-path-from-shell-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
