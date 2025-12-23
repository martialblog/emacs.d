;;;Ivy - a generic completion frontend for Emacs
(when (maybe-require-package 'ivy)
  (after-load 'ivy
    (setq-default ivy-use-virtual-buffers t
                  ivy-count-format ""
                  projectile-completion-system 'ivy
                  ivy-initial-inputs-alist
                  '((counsel-M-x . "^")
                    (man . "^")
                    (woman . "^")))
    ;; IDO-style directory navigation
    (define-key ivy-minibuffer-map (kbd "C-j") #'ivy-immediate-done)
    (define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)
    (when (maybe-require-package 'diminish)
      (diminish 'ivy-mode)))

  (add-hook 'after-init-hook
            (lambda ()
              (when (bound-and-true-p ido-ubiquitous-mode)
                (ido-ubiquitous-mode -1)
                (ido-mode -1))
              (ivy-mode 1))))

;;; a collection of Ivy-enhanced versions of common Emacs commands.
(when (maybe-require-package 'counsel)
  (setq-default counsel-mode-override-describe-bindings t)
  (add-hook 'after-init-hook 'counsel-mode))

(provide 'init-ivy)
