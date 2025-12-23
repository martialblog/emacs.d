(setq-default show-trailing-whitespace t)

;;; Whitespace
(defun sanityinc/no-trailing-whitespace ()
  "Turn off display of trailing whitespace in this buffer."
  (setq show-trailing-whitespace nil))

(provide 'init-whitespace)
