;; rust-mode
(require 'rust-mode)

;; rust-format-on-save
(setq rust-format-on-save t)

;; rust-mode-hook
(add-hook 'rust-mode-hook 'auto-complete-mode)
(add-hook 'rust-mode-hook 'flycheck-mode)
