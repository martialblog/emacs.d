;;; Init 
;;;
;;; (file-error "https://elpa.gnu.org/packages/archive-contents" "Bad Request")
;;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(setq byte-compile-warnings '(cl-functions))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time

(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))

(defconst *spell-check-support-enabled* nil)
(setq custom-safe-themes t)
(menu-bar-mode -1)

(defconst sanityinc/initial-gc-cons-threshold gc-cons-threshold
   "Initial value of `gc-cons-threshold' at start-up time.")

(setq gc-cons-threshold (* 128 1024 1024))

(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold sanityinc/initial-gc-cons-threshold)))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; (require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el

;; Calls (package-initialize)
(require 'init-elpa)      ;; Machinery for installing required packages
(require 'init-exec-path) ;; Set up $PATH

(require-package 'diminish)
(require-package 'scratch)

(require-package 'puppet-mode)

(require 'init-frame-hooks)
(require 'init-themes)
(require 'init-isearch)
(require 'init-grep)
(require 'init-uniquify)
(require 'init-ibuffer)

(require 'init-recentf)
(require 'init-smex)
(require 'init-ivy)
(require 'init-hippie-expand)
(require 'init-company)
(require 'init-sessions)
(require 'init-fonts)
(require 'init-mmm)
(require 'init-eglot)

(require 'init-editing-utils)
(require 'init-whitespace)

(require 'init-git)

(require 'init-markdown)
(require 'init-golang)
(require 'init-rust)
(require 'init-html)
(require 'init-python-mode)
(require 'init-ruby-mode)
(require 'init-sql)
(require 'init-container)
(require 'init-ansible)

;;; Start Emacs Server
(require 'server)
(unless (server-running-p)
  (server-start))

(when (file-exists-p custom-file)
  (load custom-file))

(require 'init-local nil t)
(require 'init-locales)

(add-hook 'after-init-hook
          (lambda ()
            (message "init completed in %.2fms"
                     (sanityinc/time-subtract-millis after-init-time before-init-time))))

(provide 'init)
;;;
