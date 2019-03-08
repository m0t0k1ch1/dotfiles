(global-company-mode)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(setq company-tooltip-limit 20)
(setq company-idle-delay .3)

(bind-key "C-n" 'company-select-next company-active-map)
(bind-key "C-p" 'company-select-previous company-active-map)
(bind-key "C-n" 'company-select-next company-search-map)
(bind-key "C-p" 'company-select-previous company-search-map)
