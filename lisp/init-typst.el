;; -*- lexical-binding: t; -*-

(defvar tinymist-executable (concat (getenv "HOME") "/.local/bin/tinymist"))

(with-eval-after-load 'eglot
  (with-eval-after-load 'typst-ts-mode
    (add-to-list 'eglot-server-programs
                 `((typst-ts-mode) .
                   ,(eglot-alternatives ` ("tinymist" "typst-lsp"))))))

(provide 'init-typst)
