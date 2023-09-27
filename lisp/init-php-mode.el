(require-package 'php-mode)

(defvar phpactor-executable (concat (getenv "HOME") "/github/php/phpactor/bin/phpactor"))

(with-eval-after-load 'eglot
 (add-to-list 'eglot-server-programs
  `(php-mode . ("php" "-d" "memory_limit=512M" ,phpactor-executable "language-server")))
)

(add-hook 'php-mode-hook 'eglot-ensure)

(provide 'init-php-mode)
