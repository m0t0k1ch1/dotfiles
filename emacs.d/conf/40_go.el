;; gofmt + goimports
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; godef-jump
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))

;; go-autocomplete
(require 'go-autocomplete)

;; go-eldoc
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

;; flycheck
(add-hook 'go-mode-hook 'flycheck-mode)
