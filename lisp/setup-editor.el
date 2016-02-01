;; Backups
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(provide 'setup-editor)
