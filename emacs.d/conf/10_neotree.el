(setq neo-show-hidden-files t)
(setq neo-smart-open t)

(bind-key "C-u" 'neotree-select-up-node)
(bind-key "C-c t" 'neotree-toggle)

;; disable display-line-numbers-mode in neotree buffer
(add-hook 'neotree-mode-hook (lambda () (display-line-numbers-mode 0)))
