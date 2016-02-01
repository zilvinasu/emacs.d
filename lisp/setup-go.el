;;; setup-go.el  ---  Go config
;;; Commentary:
;;; Go lang related modes and configurations
;;; Code:
(add-hook 'go-mode-hook
          (lambda ()
            (go-eldoc-setup)
            (add-hook 'before-save-hook 'gofmt-before-save)
            (add-to-list 'company-backends 'company-go)))

(provide 'setup-go)
;;; setup-go.el ends here
