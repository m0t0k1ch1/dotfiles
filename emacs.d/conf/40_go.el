(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; auto-complete
(require 'go-autocomplete)

;; flycheck
(add-hook 'go-mode-hook 'flycheck-mode)
