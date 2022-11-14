(leaf which-key
  :ensure t
  :init
  (if (daemonp)
      (add-hook 'server-after-make-frame-hook 'which-key-mode)
    (which-key-mode)))
