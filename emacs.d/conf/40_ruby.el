(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; robe
(add-hook 'ruby-mode-hook
          (lambda ()
            (robe-mode)
            (inf-ruby-keys)
            ))
(add-hook 'robe-mode-hook 'ac-robe-setup)

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; flycheck
(add-hook 'ruby-mode-hook 'flycheck-mode)
