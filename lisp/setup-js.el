;;; setup-js.el  ---  JavaScript config
;;; Commentary:
;;; JavaScript lang related modes and configurations
;;; Code:
(add-hook 'js-mode-hook
          (lambda ()
            (tern-mode t)
            (add-to-list 'company-backends 'company-tern)
            (setq-local indent-line-function 'js-jsx-indent-line)))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js-mode))

(provide 'setup-js)
;;; setup-js ends here
