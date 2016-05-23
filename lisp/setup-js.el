;;; setup-js.el  ---  JavaScript config
;;; Commentary:
;;; JavaScript lang related modes and configurations
;;; Code:
(setq-default js-indent-level 2)
(setq-default js2-include-node-externs t)

(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js-mode-hook
          (lambda ()
            (tern-mode t)
            (add-to-list 'company-backends 'company-tern)
            (setq-local evil-shift-width js-indent-level)))

(add-hook 'typescript-mode-hook
          (lambda ()
            (tide-setup)
            (setq-local flycheck-check-syntax-automatically '(save mode-enabled))
            (setq-local typescript-indent-level 2)
            (setq-local evil-shift-width typescript-indent-level)
            (eldoc-mode)
            (company-mode-on)))

(provide 'setup-js)
;;; setup-js ends here
