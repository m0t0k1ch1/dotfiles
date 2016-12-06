(defalias 'perl-mode 'cperl-mode)

(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.psgi$" . cperl-mode))

(add-hook 'cperl-mode-hook
          (lambda()
            (setq cperl-indent-level 4
                  cperl-close-paren-offset -4
                  cperl-continued-statement-offset 4
                  cperl-indent-parens-as-block t
                  cperl-tab-always-indent t)))

;; flycheck
(add-hook 'cperl-mode-hook
          (lambda ()
            (flycheck-mode t)
            (setq flycheck-checker 'perl-project-libs)))
