;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package helm
  :ensure t
  :init
  (helm-mode 1)
  :bind
  (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)))

(use-package helm-rg
	:after (helm)
	:bind (("C-S-f" . helm-rg)))

(provide 'ivansh-helm)
;;; ivansh-helm.el ends here
