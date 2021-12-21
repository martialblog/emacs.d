(require-package 'go-mode)

(add-hook 'go-mode-hook '(lambda ()
  (setq tab-width 2
  indent-tabs-mode t)))

(provide 'init-golang)
