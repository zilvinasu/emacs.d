;;; setup-helm.el  ---  Helm
;;; Commentary:
;;; helm, helm-projectile and related mode configurations
;;; Code:
(use-package helm
  :init
  (setq helm-split-window-in-side-p t)
  (setq helm-move-to-line-cycle-in-source t)
  (setq helm-ff-search-library-in-sexp t)
  (setq helm-scroll-amount 8)
  (setq helm-ff-file-name-history-use-recentf t)
  (setq projectile-completion-system 'helm)
  (when (executable-find "curl")
    (setq helm-google-suggest-use-curl-p t))
  (when (equal system-type 'darwin)
    (setq helm-locate-fuzzy-match nil)
    (setq helm-locate-command "mdfind -name %s %s"))
  :config
  (use-package helm-config)
  (bind-key "<tab>" 'helm-execute-persistent-action helm-map)
  (bind-key "C-i" 'helm-execute-persistent-action helm-map)
  (bind-key "C-z"  'helm-select-action helm-map)
  (helm-mode 1)
  (helm-autoresize-mode t)
  (projectile-global-mode)
  (helm-projectile-on))

(provide 'setup-helm)
;;; setup-helm.el ends here
