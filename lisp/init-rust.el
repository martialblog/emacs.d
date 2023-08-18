(require-package 'rust-mode)

(setq rust-format-on-save t)

(add-hook 'rust-mode-hook 'eglot-ensure)

(provide 'init-rust)
