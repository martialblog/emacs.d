;; For Emacs >= 27
(setq read-process-output-max (* 1024 1024))

(when (version<= emacs-version "26.0.50")
 (when (maybe-require-package 'eglot)
  (maybe-require-package 'consult-eglot)))

(provide 'init-eglot)
