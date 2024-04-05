(use-package ace-jump-mode
  :defer t
  :config (ace-jump-mode-enable-mark-sync)
  :bind (("C-c SPC" . ace-jump-mode)
	 (:map global-map
	       ("C-x SPC" . ace-jump-mode-pop-mark))))
