;; elpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; load-path
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/go/src/github.com/nsf/gocode/emacs")
(add-to-list 'load-path "~/go/src/github.com/dougm/goflymake")

;; exec-path
(add-to-list 'exec-path (expand-file-name "/usr/local/bin"))
(add-to-list 'exec-path (expand-file-name "~/go/bin"))

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
