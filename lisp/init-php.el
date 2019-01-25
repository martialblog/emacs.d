(when (maybe-require-package 'php-mode)
  (maybe-require-package 'smarty-mode))

(add-hook 'php-mode-hook '(lambda ()
  (setq tab-width 4
  indent-tabs-mode t)))

(provide 'init-php)
