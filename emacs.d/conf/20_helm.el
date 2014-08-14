;; helm
(helm-mode 1)
(add-to-list 'helm-completing-read-handlers-alist '(find-file . nil))

;; C-h: delete-backward-char
(eval-after-load 'helm
  '(progn (define-key helm-map (kbd "C-h") 'delete-backward-char)))
