(leaf vertico
  :disabled t
  :ensure t
  :init
  (vertico-mode)

  ;; Different scroll margin
  :config
  (setq vertico-cycle t)
  ;; (vertico-scroll-margin 0)

  :bind (:minibuffer-local-map
	      ("M-h" . backward-kill-word))
  ;; Show more candidates
  ;; (setq vertico-count 20)

  ;; Grow and shrink the Vertico minibuffer
  ;; (setq vertico-resize t)

  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  ;; (setq vertico-cycle t)
  )

