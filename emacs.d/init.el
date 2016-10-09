;; elpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode web-mode toml-mode scala-mode2 ruby-block python-mode popwin php-mode perl-completion nginx-mode neotree markdown-mode magit lua-mode keyfreq js2-mode jedi init-loader helm-ag groovy-mode go-eldoc go-autocomplete git-rebase-mode git-gutter git-commit-mode fringe-helper flycheck f ensime direx cython-mode csharp-mode autopair auto-install auto-compile anything))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
