;;; init-corfu.el - Interactive completion in buffers
(require-package 'corfu)

(setq tab-always-indent 'complete)

(when (maybe-require-package 'orderless)
  (with-eval-after-load 'vertico
    (require 'orderless)
    (setq completion-styles '(orderless basic))))
(setq completion-category-defaults nil
      completion-category-overrides nil)
(setq completion-cycle-threshold 4)

(with-eval-after-load 'corfu
  (corfu-popupinfo-mode))

(when (maybe-require-package 'corfu-terminal)
  (with-eval-after-load 'corfu
    (corfu-terminal-mode)))

(provide 'init-corfu)
