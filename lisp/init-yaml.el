(require-package 'yaml-mode)
(require-package 'highlight-indentation)

;;; YAML indentation
(after-load 'yaml-mode
  (add-hook 'yaml-mode-hook 'highlight-indentation-mode))

(provide 'init-yaml)
