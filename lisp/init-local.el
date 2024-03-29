;; Custom Keybindings
(global-set-key (kbd "M-+") 'beginning-of-buffer)
(global-set-key (kbd "M-#") 'end-of-buffer)

(defun insert-current-date () (interactive)
  (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))

;; Enable line numbers
(when (version<= emacs-version "26.0.50")
  (global-linum-mode t)
  (setq linum-format "%3d "))

(when (>= emacs-major-version 26)
  (global-display-line-numbers-mode t))

;; Default directory setting
(setq default-directory (concat (getenv "HOME") "/"))

;; xclip Mode for copy-paste
;; (xclip-mode 1)

;; bibtex stuff
(setq bibtex-align-at-equal-sign t)
(setq bibtex-entry-offset 0)
(setq bibtex-field-indentation 2)

(provide 'init-local)
;;;
