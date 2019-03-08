(add-hook 'c-mode-common-hook (lambda ()
                                (google-set-c-style)
                                (c-set-offset 'arglist-close 0)
                                (irony-mode)))
