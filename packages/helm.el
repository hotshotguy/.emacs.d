;;; package --- Summary
;;; Commentary:
;;; Code:
(leaf helm
  :ensure t
  :init
  (helm-mode 1)
  :bind
  (:global-map ("M-x" . helm-M-x)
	       ("C-x C-f" . helm-find-files)))

(provide 'ivansh-helm)
;;; ivansh-helm.el ends here
