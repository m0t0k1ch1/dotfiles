(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; flycheck
(add-hook 'ruby-mode-hook 'flycheck-mode)
