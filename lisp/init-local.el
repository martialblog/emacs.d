;; Custom Keybindings
(global-set-key (kbd "M-+") 'beginning-of-buffer)
(global-set-key (kbd "M-#") 'end-of-buffer)
(global-set-key (kbd "C-c e") #'er/expand-region)

;; Insert Date. TODO: make shortcut
;; C-u M-! date

;; Enable line numbers
(global-linum-mode t)
(setq linum-format "%3d ")

;; Default directory setting
(setq default-directory (concat (getenv "HOME") "/"))

;; xclip Mode for copy-paste
(xclip-mode 1)

;; bibtex stuff
(setq bibtex-align-at-equal-sign t)
(setq bibtex-entry-offset 0)
(setq bibtex-field-indentation 2)

(provide 'init-local)
;;;
