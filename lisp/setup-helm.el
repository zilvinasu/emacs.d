;;; setup-helm.el  ---  Helm
;;; Commentary:
;;; helm, helm-projectile and related mode configurations
;;; Code:
(require 'helm)
(require 'helm-config)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z")  'helm-select-action)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(when (equal system-type 'darwin)
  (setq helm-locate-command "mdfind -name %s %s"))

(setq helm-split-window-in-side-p           t
      helm-move-to-line-cycle-in-source     t
      helm-ff-search-library-in-sexp        t
      helm-scroll-amount                    8
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)
(helm-autoresize-mode t)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(provide 'setup-helm)
;;; setup-helm.el ends here
