(helm-mode)

(bind-key "C-x b" 'helm-for-files)
(bind-key "C-x y" 'helm-show-kill-ring)
(bind-key "C-x C-f" 'helm-find-files)
(bind-key "C-x C-x" 'helm-M-x)
(bind-key "M-x" 'helm-M-x)
(bind-key "C-h" 'delete-backward-char helm-map)
(bind-key "C-h" 'delete-backward-char helm-find-files-map)
(bind-key "TAB" 'helm-execute-persistent-action helm-find-files-map)
(bind-key "TAB" 'helm-execute-persistent-action helm-read-file-map)
