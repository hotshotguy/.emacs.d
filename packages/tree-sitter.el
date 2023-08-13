(leaf tree-sitter
  :ensure t
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(leaf tree-sitter-langs
  :ensure t
  :after tree-sitter)
