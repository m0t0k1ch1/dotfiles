(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(setq ruby-deep-indent-paren-style nil)
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))

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
