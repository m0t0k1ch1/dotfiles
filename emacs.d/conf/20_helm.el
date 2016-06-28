;; helm
(require 'helm-config)
(helm-mode 1)
(define-key global-map (kbd "C-x b") 'helm-for-files)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-x") 'helm-M-x)
(define-key global-map (kbd "M-x") 'helm-M-x)

;; C-h: delete-backward-char
(eval-after-load 'helm
  '(progn (define-key helm-map (kbd "C-h") 'delete-backward-char)))
