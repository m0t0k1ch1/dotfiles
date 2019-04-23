;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(exec-path-from-shell-initialize)

(prefer-coding-system 'utf-8)

(menu-bar-mode 0)
(show-paren-mode)

;; linum-mode does not work well with git-gutter
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


;;; helm
(helm-mode)
(bind-key "C-x m" 'helm-mini)
(bind-key "C-x b" 'helm-buffers-list)
(bind-key "C-x y" 'helm-show-kill-ring)
(bind-key "C-x C-f" 'helm-find-files)
(bind-key "C-x C-x" 'helm-M-x)
(bind-key "C-h" 'delete-backward-char helm-map)
(bind-key "C-h" 'delete-backward-char helm-find-files-map)


;;; neotree
(setq neo-show-hidden-files t)
(setq neo-smart-open t)
(bind-key "C-u" 'neotree-select-up-node)
(bind-key "C-c t" 'neotree-toggle)
;; disable display-line-numbers-mode in neotree buffer
(add-hook 'neotree-mode-hook (lambda () (display-line-numbers-mode 0)))


;;; git-gutter
(global-git-gutter-mode)
