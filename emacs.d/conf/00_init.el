(prefer-coding-system 'utf-8)

(menu-bar-mode 0)
(show-paren-mode)
(global-display-line-numbers-mode)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq delete-auto-save-files t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq scroll-step 1)

(when (boundp 'show-trailing-whitespace)
  (setq-default show-trailing-whitespace t))

(bind-key "C-t" 'other-window)
(bind-key "C-h" 'delete-backward-char)
(bind-key "C-c c" 'comment-region)
(bind-key "C-c u" 'uncomment-region)
