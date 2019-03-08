(defun my-irony-mode-on ()
  (when (member major-mode irony-supported-major-modes)
    (irony-mode 1)))
