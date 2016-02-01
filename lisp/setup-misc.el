;;; setup-misc.el  --- Misc configs
;;; Commentary:
;;; Configs for modes which require little configuration
;;; Code:
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'yas-global-mode)
(add-hook 'after-init-hook 'global-flycheck-mode)

(provide 'setup-misc)
;;; setup-misc.el ends here
