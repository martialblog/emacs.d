(require-package 'go-mode)

(add-hook 'go-mode-hook #'(lambda ()
  (setq tab-width 2 indent-tabs-mode t)
  (add-hook 'before-save-hook 'gofmt-before-save)
  )
)

(add-hook 'go-mode-hook 'eglot-ensure)

(provide 'init-golang)
