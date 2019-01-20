(helm-mode)

(bind-key "C-x m" 'helm-mini)
(bind-key "C-x b" 'helm-buffers-list)
(bind-key "C-x y" 'helm-show-kill-ring)
(bind-key "C-x C-f" 'helm-find-files)
(bind-key "C-x C-x" 'helm-M-x)
(bind-key "C-h" 'delete-backward-char helm-map)
(bind-key "C-h" 'delete-backward-char helm-find-files-map)
