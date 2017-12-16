;; elpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; load-path
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.ghq/src/github.com/nsf/gocode/emacs")

;; exec-path
(add-to-list 'exec-path (expand-file-name "/usr/local/bin"))
(add-to-list 'exec-path (expand-file-name "~/.ghq/bin"))

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
