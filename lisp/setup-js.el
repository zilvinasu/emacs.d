;;; setup-js.el  ---  JavaScript config
;;; Commentary:
;;; JavaScript lang related modes and configurations
;;; Code:
(add-hook 'js-mode-hook
          (lambda ()
            (tern-mode t)
            (add-to-list 'company-backends 'company-tern)
            (setq-local js-indent-level 2)
            (setq-local indent-line-function 'js-jsx-indent-line)))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js-mode))

(add-hook 'typescript-mode-hook
          (lambda ()
            (tide-setup)
            (setq-local flycheck-check-syntax-automatically '(save mode-enabled))
            (eldoc-mode)
            (company-mode-on)))

(provide 'setup-js)
;;; setup-js ends here
