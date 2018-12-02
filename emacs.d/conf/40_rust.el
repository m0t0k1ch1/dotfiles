;; rust-mode
(require 'rust-mode)

;; rust-mode-hook
(add-hook 'rust-mode-hook 'auto-complete-mode)

;; rust-format-on-save
(setq rust-format-on-save t)
