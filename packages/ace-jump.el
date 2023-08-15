(leaf ace-jump-mode
  :ensure t
  :config (ace-jump-mode-enable-mark-sync)
  :bind (("C-c SPC" . ace-jump-mode)
	 (:global-map
	  ("C-x SPC" . ace-jump-mode-pop-mark))))
