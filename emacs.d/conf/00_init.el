;; use utf-8
(prefer-coding-system 'utf-8)

;; hide menu bar
(menu-bar-mode -1)

;; show line number
(line-number-mode t)

;; show column number
(column-number-mode t)

;; disable backup
(setq make-backup-files nil)

;; disable auto save
(setq auto-save-default nil)

;; delete auto save files
(setq delete-auto-save-files t)

;; disable tab-character
(setq-default indent-tabs-mode nil)

;; tab-width: 4
(setq-default tab-width 4)

;; scroll-step: 1
(setq scroll-step 1)

;; highlight paired bracket
(show-paren-mode 1)

;; highlight whitespace
(when (boundp 'show-trailing-whitespace)
  (setq-default show-trailing-whitespace t))

;; C-h: delete-backward-char
(bind-key "C-h" 'delete-backward-char)

;; C-t: other-window-or-split
(defun other-window-or-split();
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(bind-key "C-t" 'other-window-or-split)

;; C-c c: comment-region
(bind-key "C-c c" 'comment-region)

;; C-c u: uncomment-region
(bind-key "C-c u" 'uncomment-region)
