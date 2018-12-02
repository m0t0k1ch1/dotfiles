;; M-e: flycheck-next-error
(bind-key "M-e" 'flycheck-next-error)

;; flycheck-mode-hook
(add-hook 'flycheck-mode-hook 'flycheck-rust-setup)
