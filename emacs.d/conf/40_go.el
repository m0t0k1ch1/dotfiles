;; go-mode
(require 'go-mode)

;; goimports
(setq gofmt-command "goimports")

;; go-autocomplete
(require 'go-autocomplete)

;; go-eldoc
(require 'go-eldoc)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "green"
                    :weight 'bold)

;; go-mode-hook
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook (lambda ()
                          (add-hook 'before-save-hook 'gofmt-before-save)
                          (local-set-key (kbd "M-.") 'godef-jump)))
