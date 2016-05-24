;;; setup-editor.el  ---  Editor config
;;; Commentary:
;;; Editor configurations and related modes
;;; Code:

;; Theming
(load-theme 'leuven t)

(use-package rich-minority
  :init
  (setq-default rm-blacklist "*")
  (setq-default rm-whitelist (mapconcat 'identity '("FlyC" "Fly") "\\|"))
  :config
  (rich-minority-mode 1))

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
