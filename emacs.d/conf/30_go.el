(setq gofmt-command "goimports")

(add-hook 'go-mode-hook (lambda ()
                          (add-hook 'before-save-hook 'gofmt-before-save)
                          (company-mode)
                          (flycheck-mode)
                          (go-eldoc-setup)
                          (set (make-local-variable 'company-backends) '(company-go))))
