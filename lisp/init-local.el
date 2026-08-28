;; -*- lexical-binding: t; -*-

;; Custom Keybindings
(global-set-key (kbd "M-+") 'beginning-of-buffer)
(global-set-key (kbd "M-#") 'end-of-buffer)

(defun insert-current-date () (interactive)
  (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))

;; Default directory setting
(setq default-directory (concat (getenv "HOME") "/"))

(provide 'init-local)
