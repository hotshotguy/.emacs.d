;; without this leaf projectile do not loads
(leaf projectile
  :require t)

(leaf projectile
  :ensure t
  :bind-keymap ("C-c p" . projectile-command-map))
