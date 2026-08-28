;; -*- lexical-binding: t; -*-

(add-to-list 'load-path (expand-file-name "lisp/vendor/" user-emacs-directory))
(require 'odin-mode)

(defvar ols-executable (concat (getenv "HOME") "/.local/bin/ols"))

(with-eval-after-load 'eglot
 (add-to-list 'eglot-server-programs
  `((odin-mode) . (ols-executable)))
)

(provide 'init-odin)
