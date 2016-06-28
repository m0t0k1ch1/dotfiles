;; use utf-8
(prefer-coding-system 'utf-8)

;; theme
(load-theme 'tsdh-dark t)

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

;; autopair-global-mode
(require 'autopair)
(autopair-global-mode)

;; C-h: delete-backward-char
(define-key global-map (kbd "C-h") 'delete-backward-char)

;; C-t: other-window-or-split
(defun other-window-or-split();
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(define-key global-map (kbd "C-t") 'other-window-or-split)
