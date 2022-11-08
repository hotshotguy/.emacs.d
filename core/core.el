;;; package --- Summary
;;; Commentary:
;;; Code:
(defvar ivansh-hydras-dir
  (expand-file-name "hydras" ivansh-config-dir))
(defvar ivansh-packages-dir
  (expand-file-name "packages" ivansh-config-dir))

(eval-and-compile
  (customize-set-variable
   'package-archives '(("org" . "https://orgmode.org/elpa/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("gnu" . "https://elpa.gnu.org/packages/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
        :ensure t
        :init
        ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
        (leaf hydra :ensure t)
        (leaf el-get :ensure t)
        (leaf blackout :ensure t)

        :config
        ;; initialize leaf-keywords.el
        (leaf-keywords-init)))

(menu-bar-mode 0)
(tool-bar-mode 0)
(setq make-backup-files nil)

;; config changes made through the customize UI will be stored here
(setq custom-file (expand-file-name "custom.el" ivansh-packages-dir))

(defun ivansh-load-directory-files (dir)
  (when (file-exists-p dir )
    (message "[IVANSH] Loading files in %s..." dir)
    (mapc 'load (directory-files dir 't "^[^#\.].*\\.el$"))))

(ivansh-load-directory-files ivansh-packages-dir)
(ivansh-load-directory-files ivansh-hydras-dir)

(when ivansh-theme
  (load-theme ivansh-theme t))

(provide 'core)
;;; core.el ends here
