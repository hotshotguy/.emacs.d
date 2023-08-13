(defgroup ivansh nil
  "Emacs IVANSH configuration."
  :prefix "ivansh-"
  :group 'convenience)

(defcustom ivansh-theme 'deeper-blue
  "The default color theme."
  :type 'symbol
  :group 'ivansh)

(defun ivansh-setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1)
  (whitespace-mode 1))

(provide 'ivansh-custom)
