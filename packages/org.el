(defvar ivansh-org-dir
  (expand-file-name "~/Yandex.Disk/org")
  "Ivan Shamshurin's org files dir.")

(leaf org
  :init
  :config
   ;; agenda
   (setq org-directory ivansh-org-dir)
   (let ((tasks (expand-file-name "tasks.org" ivansh-org-dir))
	 (notes (expand-file-name "notes.org" ivansh-org-dir)))
     (setq org-agenda-files (list tasks notes))
     (setq org-default-notes-file notes))
   
   (setq org-todo-keywords '((sequence "TODO" "DONE"))))
