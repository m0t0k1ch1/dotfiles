;; js2-mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; js2-mode-hook
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
