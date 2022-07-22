;;; Basic docker config
(require-package 'dockerfile-mode)
(require-package 'docker-compose-mode)

;;; Yaml Indentation
(require-package 'highlight-indentation)
(after-load 'yaml-mode
  (add-hook 'yaml-mode-hook 'highlight-indentation-mode))

(provide 'init-container)
