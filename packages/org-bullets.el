(leaf org-bullets
  :ensure t
  :hook (org-mode-hook . (lambda () (org-bullets-mode 1))))
