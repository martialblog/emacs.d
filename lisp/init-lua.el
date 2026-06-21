(require-package 'lua-mode)

(setq-default lua-indent-level 2)

;;; https://github.com/LuaLS/lua-language-server
(defvar luals-executable (concat (getenv "HOME") ".local/bin/lua-language-server"))

(with-eval-after-load 'eglot
 (add-to-list 'eglot-server-programs
  `((lua-mode lua-ts-mode) . (luals-executable)))
)

(provide 'init-lua)
