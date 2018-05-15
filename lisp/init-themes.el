;;; Themes
(require-package 'apropospriate-theme)
(require-package 'zenburn-theme)

;; If you don't customize it, this is the theme you get.
(setq-default custom-enabled-themes '(zenburn))

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes)

;;------------------------------------------------------------------------------
;; Toggle between themes
;;------------------------------------------------------------------------------

(defun dark ()
  "Activate apropospriate theme."
  (interactive)
  (load-theme 'apropospriate-dark t))

(defun light ()
  "Activate apropospriate theme."
  (interactive)
  (load-theme 'apropospriate-light t))

(defun zen ()
  "Activate zenburn theme."
  (interactive)
  (load-theme 'zenburn t))

(provide 'init-themes)
