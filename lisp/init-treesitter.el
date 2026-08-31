;; -*- lexical-binding: t; -*-

(require 'tree-sitter)
(require 'tree-sitter-langs)

(setq treesit-language-source-alist
      '((tsx "https://github.com/tree-sitter/tree-sitter-typescript" "v0.23.2" "tsx/src")
       (go "https://github.com/tree-sitter/tree-sitter-go")
       (html "https://github.com/tree-sitter/tree-sitter-html")
       (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
       (python "https://github.com/tree-sitter/tree-sitter-python")
       (markdown "https://github.com/ikatyang/tree-sitter-markdown")
       (json "https://github.com/tree-sitter/tree-sitter-json")
       (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "v0.23.2" "typescript/src")))

(provide 'init-treesitter)
