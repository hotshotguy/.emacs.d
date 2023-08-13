(leaf tide
  :ensure t)

(leaf typescript-mode
  :ensure t
  :after tree-sitter company ivansh-custom
  :config
  ;; we choose this instead of tsx-mode so that eglot can automatically figure out language for server
  ;; see https://github.com/joaotavora/eglot/issues/624 and https://github.com/joaotavora/eglot#handling-quirky-servers
  (define-derived-mode typescriptreact-mode typescript-mode
    "TypeScript TSX")

  ;; use our derived mode for tsx files
  (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescriptreact-mode))
  ;; by default, typescript-mode is mapped to the treesitter typescript parser
  ;; use our derived mode to map both .tsx AND .ts -> typescriptreact-mode -> treesitter tsx
  (add-to-list 'tree-sitter-major-mode-language-alist '(typescriptreact-mode . tsx))
  :init
  (add-hook 'typescript-mode-hook #'ivansh-setup-tide-mode)
  ;; if you use treesitter based typescript-ts-mode (emacs 29+)
  (add-hook 'typescript-ts-mode-hook #'ivansh-setup-tide-mode))


(leaf apheleia
  :ensure t
  :config
  (apheleia-global-mode +1))
