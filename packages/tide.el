(use-package tide
  :hook ((typescript-ts-mode-hook . tide-setup)
         (tsx-ts-mode-hook . tide-setup)
         (typescript-ts-mode-hook . tide-hl-identifier-mode)))
