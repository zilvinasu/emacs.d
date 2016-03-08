;;; setup-go.el  ---  Go config
;;; Commentary:
;;; Go lang related modes and configurations
;;; Code:
(use-package go-mode
  :init
  (add-hook 'before-save-hook 'gofmt-before-save)
  :bind ("M-." . godef-jump)
  :config
  (go-eldoc-setup)
  (add-to-list 'company-backends 'company-go))

(provide 'setup-go)
;;; setup-go.el ends here
