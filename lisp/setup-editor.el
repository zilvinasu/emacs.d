;;; setup-editor.el  ---  Editor config
;;; Commentary:
;;; Editor configurations and related modes
;;; Code:

;; Theming
(load-theme 'leuven t)

(setq rm-blacklist "*")
(setq rm-whitelist (mapconcat 'identity '("FlyC" "Fly") "\\|"))
(setq sml/no-confirm-load-theme t)
(sml/setup)

;; Backups
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(provide 'setup-editor)
;;; setup-editor.el ends here
