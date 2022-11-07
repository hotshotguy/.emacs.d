(defvar ivansh-config-dir
  (file-name-directory load-file-name)
  "Ivan Shamshurin's config dir.")

(add-to-list 'load-path (expand-file-name "core" ivansh-config-dir))

(require 'core)
